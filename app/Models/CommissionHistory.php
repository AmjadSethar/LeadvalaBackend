<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class CommissionHistory extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * The Attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'admin_commission',
        'provider_commission',
        'booking_id',
        'provider_id',
        'category_id',
    ];

    protected $with = [
        'booking',
        'provider',
    ];

    protected $casts = [
        'admin_commission' => 'float',
        'provider_commission' => 'float',
        'booking_id' => 'integer',
        'provider_id' => 'integer',
        'category_id' => 'integer',
        'status' => 'integer',
    ];

    /**
     * @return BelongsTo
     */
    public function booking()
    {
        return $this->belongsTo(Booking::class, 'booking_id');
    }

    /**
     * @return HasOne
     */
    public function provider()
    {
        return $this->hasOne(User::class, 'id', 'provider_id');
    }

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'category_id');
    }

     /**
     * Define a many-to-many relationship with Serviceman.
     * 
     * @return BelongsToMany
     */
    public function serviceman_commissions()
    {
        return $this->belongsToMany(User::class, 'serviceman_commissions', 'commission_history_id', 'serviceman_id')
            ->withPivot('commission')
            ->withTimestamps();
    }
}
