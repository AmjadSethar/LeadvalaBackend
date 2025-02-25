<?php

namespace App\Http\Controllers\API;

use App\Models\Lead;
use App\Models\LeadTimeline;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Models\LeadStatus;

class LeadController extends Controller
{
    /**
     * Validate incoming requests.
     *
     * @param  array  $data
     * @param  array  $rules
     * @return \Illuminate\Http\JsonResponse|null
     */
    protected function validateRequest(array $data, array $rules)
    {
        $validator = Validator::make($data, $rules);

        if ($validator->fails()) {
            return response()->json([
                'error' => true,
                'message' => 'Validation failed.',
                'errors' => $validator->errors(),
                'code' => 422,
            ], 422);
        }

        return null;
    }

    /**
     * Create a lead after successful payment.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function createLead(Request $request)
    {
        $validation = $this->validateRequest($request->all(), [
            'user_id' => 'required|exists:users,id',
            'service_id' => 'required|exists:services,id',
        ]);

        if ($validation) {
            return $validation;
        }

        DB::beginTransaction();

        try {
            $lead = Lead::create([
                'user_id' => $request->user_id,
                'service_id' => $request->service_id,
                'payment_status' => 'paid',
            ]);

            LeadTimeline::create([
                'lead_id' => $lead->id,
                'action' => 'Lead purchased',
                'action_time' => now(),
            ]);

            LeadStatus::create([
                'lead_id' => $lead->id,
                'status' => 'not_connected',
                'status_time' => now(),
            ]);

            DB::commit();

            return response()->json([
                'lead' => $lead,
                'message' => 'Lead created successfully.',
            ], 201);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'error' => 'An error occurred while creating the lead. Please try again. ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Get the timeline of a specific lead.
     *
     * @param  int  $leadId
     * @return \Illuminate\Http\JsonResponse
     */
    public function getLeadTimeline($leadId)
    {
        $lead = Lead::with('timeline')->findOrFail($leadId);

        return response()->json([
            'timeline' => $lead->timeline,
        ], 200);
    }

    /**
     * Update the status of a lead and add an action to its timeline.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $leadId
     * @return \Illuminate\Http\JsonResponse
     */
    public function updateLeadStatus(Request $request, $leadId)
    {
        $validation = $this->validateRequest($request->all(), [
            'status' => 'required|string',
        ]);

        if ($validation) {
            return $validation;
        }

        $lead = Lead::findOrFail($leadId);

        LeadStatus::create([
            'lead_id' => $lead->id,
            'status' => $request->status,
            'status_time' => now(),
        ]);

        LeadTimeline::create([
            'lead_id' => $lead->id,
            'action' => 'Status updated to ' . $request->status,
            'action_time' => now(),
        ]);

        return response()->json([
            'message' => 'Lead status updated successfully.',
        ], 200);
    }

    /**
     * Get the current status of a specific lead.
     *
     * @param  int  $leadId
     * @return \Illuminate\Http\JsonResponse
     */
    public function getLeadStatus($leadId)
    {
        $leadStatus = LeadStatus::where('lead_id', $leadId)
            ->latest('status_time')
            ->first();

        if (!$leadStatus) {
            return response()->json([
                'error' => 'Lead status not found.',
            ], 404);
        }

        return response()->json([
            'status' => $leadStatus->status,
            'status_time' => $leadStatus->status_time,
        ], 200);
    }
}
