<?php

namespace App\Repositories\API;

use App\Exceptions\ExceptionHandler;
use App\Exceptions\ExceptionHandler as ExceptionsExceptionHandler;
use App\Helpers\Helpers;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Eloquent\BaseRepository;

class AccountRepository extends BaseRepository
{
    public function model()
    {
        return User::class;
    }

    public function boot()
    {
        try {

            $this->pushCriteria(app(RequestCriteria::class));
        } catch (ExceptionsExceptionHandler $e) {

            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    public function self()
    {
        try {

            $user_id = Helpers::getCurrentUserId();
            $user = $this->model->with('activeSubscription')->findOrFail($user_id);
            $user->setAppends(['role', 'permission', 'primary_address', 'company']);

            return response()->json(['success' => true, 'user' => $user]);
        } catch (Exception $e) {
            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    public function updateProfile($request)
    {
        DB::beginTransaction();
        try {
            $request['phone'] = (string) $request['phone'];
            $user = $this->model->findOrFail(Helpers::getCurrentUserId());

            if ($request->hasFile('profile_image') && $request->file('profile_image')->isValid()) {
                $user->clearMediaCollection('profile_image');
                $user->addMediaFromRequest('profile_image')->toMediaCollection('profile_image');
            }

            $user->update($request->all());
            DB::commit();

            return [
                'user' => $user,
                'success' => true,
            ];
        } catch (Exception $e) {

            DB::rollback();
            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    public function updatePassword($request)
    {
        DB::beginTransaction();
        try {

            $user_id = Helpers::getCurrentUserId();
            $user = $this->model->findOrFail($user_id);

            $user->update(['password' => Hash::make($request->password)]);
            DB::commit();

            return response()->json([
                'message' => __('static.auth.password_has_been_changed'),
            ]);
        } catch (Exception $e) {

            DB::rollback();
            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    public function deleteAccount()
    {
        DB::beginTransaction();
        try {

            $user = $this->model->findOrFail(auth('sanctum')->user()->id);
            $user->forceDelete(auth('sanctum')->user()->id);
            DB::commit();

            return [
                'message' => __('auth.user_deleted'),
            ];
        } catch (Exception $e) {
            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }
}
