<?php

namespace App\Policies;

use App\Enums\RoleEnum;
use App\Models\Service;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ServicePolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     */
    public function viewAny(User $user)
    {
        if ($user->can('backend.service.index')) {

            return true;
        }
    }

    /**
     * Determine whether the user can view the model.
     */
    public function view(User $user, Service $service)
    {
        //
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user)
    {
        if ($user->can('backend.service.create')) {
            return true;
        }
    }

    /**
     * Determine whether the user can update the model.
     */
    public function update(User $user)
    {
        $id = request()->service?->id ?? request()?->service;
        $service = Service::findOrFail($id);
        if ($user->can('backend.service.edit') && ($user->role->name != RoleEnum::PROVIDER || $user->id == $service->created_by_id || $user->id == $service->user_id)) {
            return true;
        }
    }

    /**
     * Determine whether the user can delete the model.
     */
    public function delete(User $user)
    {
        $id = request()->service?->id ?? request()?->service;
        $service = Service::findOrFail($id);
        if ($user->can('backend.service.destroy') && $user->id == $service->created_by_id) {
            return true;
        }
    }

    /**
     * Determine whether the user can restore the model.
     */
    public function restore(User $user, Service $service)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     */
    public function forceDelete(User $user, Service $service)
    {
        //
    }
}
