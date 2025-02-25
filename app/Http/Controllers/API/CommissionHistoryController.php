<?php

namespace App\Http\Controllers\API;

use App\Enums\RoleEnum;
use App\Exceptions\ExceptionHandler;
use App\Helpers\Helpers;
use App\Http\Controllers\Controller;
use App\Models\CommissionHistory;
use App\Repositories\API\CommissionHistoryRepository;
use Exception;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class CommissionHistoryController extends Controller
{
    public $repository;

    public function __construct(CommissionHistoryRepository $repository)
    {
        $this->authorizeResource(CommissionHistory::class, 'commissionHistory');
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {

            return $this->filter($this->repository, $request);

        } catch (Exception $e) {

            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create() {}

    /**
     * Display the specified resource.
     */
    public function show(CommissionHistory $commissionHistory)
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store()
    {
        return $this->repository->store();
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(CommissionHistory $commissionHistory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, CommissionHistory $commissionHistory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(CommissionHistory $commissionHistory)
    {
        //
    }

    public function filter($commissionHistories, $request)
    {
        $commission = [];
        $roleName = Helpers::getCurrentRoleName();
        if ($request->completed_by_me) {
            $commissionHistories = $commissionHistories->whereHas('booking', function (Builder $booking) {
                $booking->whereHas('servicemen', function (Builder $servicemen) {
                    $servicemen->where('serviceman_id', Helpers::getCurrentUserId());
                });
            });
        }

        if ($roleName == RoleEnum::PROVIDER) {
            $commissionHistories = $commissionHistories->where('provider_id', Helpers::getCurrentUserId());
        }

        if ($roleName == RoleEnum::SERVICEMAN) {
            $commissionHistories = $commissionHistories->where('serviceman_id', Helpers::getCurrentUserId());
        }

        if ($request->field && $request->sort) {
            $commissionHistories = $commissionHistories->orderBy($request->field, $request->sort);
        }

        if ($request->start_date && $request->end_date) {
            $commissionHistories = $commissionHistories->whereBetween('created_at', [$request->start_date, $request->end_date]);
        }
        $commission['histories'] = $commissionHistories->get();
        $commission['total'] = array_sum($commissionHistories->pluck('provider_commission')->toArray());

        return $commission;
    }
}
