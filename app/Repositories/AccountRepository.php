<?php

namespace App\Repositories;

use App\Models\Address;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Eloquent\BaseRepository;

class AccountRepository extends BaseRepository
{
    protected $address;

    public function boot()
    {
        try {
            $this->pushCriteria(app(RequestCriteria::class));
        } catch (Exception $e) {
            throw new $e;
        }
    }

    public function model()
    {
        $this->address = new Address();

        return User::class;
    }

    public function updateProfile($request)
    {
        DB::beginTransaction();
        try {
            $user = $this->model->findOrFail(auth()->user()->id);
            $user->update([
                'name' => $request['name'],
                'email' => $request['email'],
                'phone' => (string) $request['phone'],
                'code' => $request['code'],
                'status' => true,
            ]);

            if (isset($request['image'])) {
                $user->clearMediaCollection('image');
                $user->addMediaFromRequest('image')->toMediaCollection('image');
            }
            if ($request->country_id) {
                if ($request->address_id) {
                    $address = $this->address->findOrFail($request->address_id);
                    $address->update([
                        'user_id' => auth()->user()->id,
                        'area' => $request['area'],
                        'postal_code' => $request['postal_code'],
                        'country_id' => $request['country_id'],
                        'state_id' => $request['state_id'],
                        'city' => $request['city'],
                        'address' => $request['address'],
                        'status' => 1,
                    ]);
                } else {
                    $this->address->where('user_id', auth()->user()->id)->update(['is_primary' => false]);
                    $this->address->create([
                        'user_id' => auth()->user()->id,
                        'area' => $request['area'],
                        'postal_code' => $request['postal_code'],
                        'country_id' => $request['country_id'],
                        'state_id' => $request['state_id'],
                        'city' => $request['city'],
                        'address' => $request['address'],
                        'is_primary' => true,
                        'status' => 1,
                    ]);
                }
            }
            DB::commit();

            return back()->with('message', 'Profile Update Successfully.');
        } catch (Exception $e) {
            DB::rollback();

            return back()->with('error', $e->getMessage());
        }
    }

    public function updatePassword($request)
    {
        DB::beginTransaction();
        try {
            $this->model->findOrFail(auth()->user()->id)
                ->update(['password' => Hash::make($request->new_password)]);

            DB::commit();

            return back()->with('message', 'Password Update Successfully.');
        } catch (Exception $e) {
            DB::rollback();

            return back()->with('error', $e->getMessage());
        }
    }
}
