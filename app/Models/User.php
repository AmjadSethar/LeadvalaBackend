<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Modules\Subscription\Entities\UserSubscription;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable implements HasMedia, MustVerifyEmail
{
    use HasApiTokens, HasFactory, HasRoles, InteractsWithMedia, Notifiable, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'phone',
        'code',
        'system_reserve',
        'status',
        'is_featured',
        'provider_id',
        'created_by',
        'current_password',
        'new_password',
        'confirm_password',
        'type',
        'experience_interval',
        'is_verified',
        'experience_duration',
        'company_name',
        'company_email',
        'company_phone',
        'company_code',
        'description',
        'served',
        'fcm_token',
        'company_id',
    ];

    protected $casts = [
        'phone' => 'integer',
        'email_verified_at' => 'datetime',
        'status' => 'integer',
        'is_featured' => 'integer',
        'provider_id' => 'integer',
        'created_by' => 'integer',
        'experience_interval' => 'string',
        'experience_duration' => 'integer',
        'company_phone' => 'integer',
        'served' => 'integer',
        'company_id' => 'integer',
        'is_verified' => 'integer',
    ];

    protected $appends = [
        'role',
        'review_ratings',
        'primary_address',
        'ServicemanReviewRatings',
    ];

    protected $with = [
        'media',
        'wallet',
        'providerWallet',
        'servicemanWallet',
        'knownLanguages:key,id',
        'expertise:title,id',
        'zones',
    ];

    protected $withCount = ['bookings'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    public static function boot()
    {
        parent::boot();
        static::saving(function ($model) {
            $user = auth()->user();
            if ($user) {
                $model->created_by = $user->id;
            }
        });

        static::deleting(function ($user) {
            $user->bankDetail()->delete();
            $user->servicemans()->delete();
            $user->services()->delete();
            $user->addresses()->delete();
            if ($user->type === 'company') {
                $user->company()->delete();
            }
        });
    }

    public function subscriptions()
    {
        return $this->hasMany(UserSubscription::class, 'user_id');
    }

    public function activeSubscription()
    {
        return $this->hasOne(UserSubscription::class, 'user_id')->where('is_active', true);
    }

    public function addresses()
    {
        return $this->hasMany(Address::class, 'user_id', 'id');
    }

    public function getPrimaryAddressAttribute()
    {
        return $this->addresses()->where('is_primary', true)->first();
    }

    public function provider()
    {
        return $this->belongsTo(User::class, 'provider_id', 'id');
    }

    public function reviews(): HasMany
    {
        return $this->hasMany(Review::class, 'provider_id');
    }

    public function servicemanreviews(): HasMany
    {
        return $this->hasMany(Review::class, 'serviceman_id');
    }

    public function bookings(): HasMany
    {
        return $this->hasMany(Booking::class, 'provider_id');
    }

    public function servicemans()
    {
        return $this->hasMany(User::class, 'provider_id', 'id')->with('addresses');
    }

    public function documents()
    {
        return $this->belongsToMany(Document::class, 'user_documents')
            ->withPivot('status', 'notes', 'identity_no');
    }

    public function servicemen_bookings()
    {
        return $this->belongsToMany(Booking::class, 'booking_servicemen', 'serviceman_id', 'booking_id');
    }

    public function services()
    {
        return $this->hasMany(Service::class, 'user_id', 'id');
    }

    public function service_packages()
    {
        return $this->hasMany(ServicePackage::class, 'provider_id', 'id');
    }

    public function wallet(): HasOne
    {
        return $this->hasOne(Wallet::class, 'consumer_id');
    }

    public function providerWallet(): HasOne
    {
        return $this->hasOne(ProviderWallet::class, 'provider_id');
    }

    public function servicemanWallet(): HasOne
    {
        return $this->hasOne(ServicemanWallet::class, 'serviceman_id');
    }

    public function getPermissionAttribute()
    {
        return $this->getAllPermissions();
    }

    public function getServicemanReviewRatingsAttribute()
    {
        return $this->servicemanreviews->avg('rating');
    }

    public function getReviewRatingsAttribute()
    {
        return $this->reviews->avg('rating');
    }

    public function getRoleAttribute()
    {
        return $this->roles->first();
    }

    public function knownLanguages(): BelongsToMany
    {
        return $this->belongsToMany(Language::class, 'user_languages', 'user_id');
    }

    public function expertise(): BelongsToMany
    {
        return $this->belongsToMany(Service::class, 'user_expertise_services', 'user_id');
    }

    public function bankDetail(): HasOne
    {
        return $this->hasOne(BankDetail::class, 'user_id');
    }

    public function timeSlots()
    {
        return $this->hasMany(TimeSlot::class, 'user_id');
    }

    public function company()
    {
        return $this->belongsTo(Company::class, 'company_id');
    }

    public function getCompanyAttribute()
    {
        return $this->company()->first();
    }

    public function UserDocuments()
    {
        return $this->hasMany(UserDocument::class, 'user_id');
    }

    public function serviceAvailabilities()
    {
        return $this->hasMany(ServiceAvailability::class, 'user_id');
    }

    public function zones(): BelongsToMany
    {
        return $this->belongsToMany(Zone::class, 'provider_zones', 'provider_id');
    }
}
