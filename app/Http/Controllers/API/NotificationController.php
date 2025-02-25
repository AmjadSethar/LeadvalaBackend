<?php

namespace App\Http\Controllers\API;

use App\Helpers\Helpers;
use App\Http\Controllers\Controller;
use App\Repositories\API\NotificationRepository;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    protected $repository;

    public function __construct(NotificationRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index(Request $request)
    {
        $user = $this->repository->findOrFail(Helpers::getCurrentUserId());

        return $user->notifications()->latest('created_at')->paginate($request->paginate ?? $user->count());
    }

    public function store(Request $request)
    {
        return $this->repository->store($request);
    }

    public function markAsRead(Request $request)
    {
        return $this->repository->markAsRead($request);
    }

    public function destroy(Request $request)
    {
        return $this->repository->destroy($request->id);
    }

    public function clearNotifications(Request $request)
    {
        return $this->repository->clearNotifications();
    }

    public function dummyNotification(Request $request)
    {
        $user = Helpers::getCurrentUser();
        $token = $user->fcm_token;
        if ($token) {
            $notification = [
                'message' => [
                    'token' => $token,
                    'notification' => [
                        'title' => 'An booking has been placed',
                        'body' => 'Congratulations! A new booking has been received.',
                        'image' => '',
                    ],
                    'data' => [
                        'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                        'type' => 'booking',
                        'booking_id' => '#12345',
                    ],
                ],
            ];

            Helpers::pushNotification($notification);
        }

        return response()->json([
            'success' => true,
        ]);
    }
}
