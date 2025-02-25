<?php

namespace App\Models;

use App\Enums\EarthRadius;
use App\Helpers\Helpers;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Service extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia, Sluggable, SoftDeletes;

    protected $primaryKey = 'id';

    protected $fillable = [
        'phone_number',
        'audio',
        'type_of_tenant',
        'budget',
        'service_type',
        'title',
        'price',
        'status',
        'duration',
        'duration_unit',
        'discount',
        'per_serviceman_commission',
        'description',
        'speciality_description',
        'address_id',
        'user_id',
        'type',
        'is_featured',
        'created_by_id',
        'is_random_related_services',
        'meta_title',
        'meta_description',
        'tax_id',
        'service_rate',
        'slug',
        'required_servicemen',
    ];

    protected $withCount = [
        'bookings',
        'reviews',
    ];

    protected $appends = [
        'review_ratings',
        'rating_count',
    ];

    protected $casts = [
        'price' => 'float',
        'status' => 'integer',
        'discount' => 'float',
        'per_serviceman_commission' => 'float',
        'address_id' => 'integer',
        'user_id' => 'integer',
        'is_featured' => 'integer',
        'created_by_id' => 'integer',
        'tax_id' => 'integer',
        'service_rate' => 'float',
        'required_servicemen' => 'integer',
    ];

    public $with = [
        'categories',
        'media',
    ];

    public function addresses()
    {
        return $this->hasMany(Address::class, 'service_id', 'id');
    }

    public static function boot()
    {
        parent::boot();
        static::saving(function ($model) {
            $model->created_by_id = auth()->user()->id;
        });
    }

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title',
                'onUpdate' => true,
            ],
        ];
    }

    public function bookings(): HasMany
    {
        return $this->hasMany(Booking::class, 'service_id');
    }

    public function categories(): BelongsToMany
    {
        return $this->belongsToMany(Category::class, 'service_categories');
    }

    public function reviews(): HasMany
    {
        return $this->hasMany(Review::class, 'service_id');
    }

    public function related_services()
    {
        return $this->belongsToMany(Service::class, 'related_services', 'related_service_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function tax(): BelongsTo
    {
        return $this->belongsTo(Tax::class);
    }

    public function getRatingCountAttribute()
    {
        return $this->reviews->avg('rating');
    }

    public function getReviewRatingsAttribute()
    {
        return Helpers::getReviewRatings($this->id);
    }

    public static function calculateDistance($serviceLat, $serviceLong, $userLat, $userLong)
    {
        $earthRadius = EarthRadius::EARTHRADIUS;

        $serviceLat = deg2rad($serviceLat);
        $serviceLon = deg2rad($serviceLong);
        $userLat = deg2rad($userLat);
        $userLon = deg2rad($userLong);

        $distanceLat = $userLat - $serviceLat;
        $distanceLon = $userLon - $serviceLon;

        $angularDistanceSquared = sin($distanceLat / 2) ** 2 + cos($serviceLat) * cos($userLat) * sin($distanceLon / 2) ** 2;
        $centralAngle = 2 * asin(sqrt($angularDistanceSquared));

        $distance = $earthRadius * $centralAngle;

        return $distance;
    }

    public function serviceAvailabilities()
    {
        return $this->hasMany(ServiceAvailability::class);
    }

    public function faqs()
    {
        return $this->hasMany(ServiceFAQ::class, 'service_id', 'id');
    }
}
