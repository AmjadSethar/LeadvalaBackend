<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class FavouriteList extends Model
{
    use HasFactory;

    protected $fillable = [
        'consumer_id',
        'service_id',
        'provider_id',
    ];

    protected $cast = [
        'service_id' => 'integer',
        'provider_id' => 'integer',
        'consumer_id' => 'integer',
    ];

    protected $with = [
        'provider',
        'service',
    ];

    public static function boot()
    {
        parent::boot();
        static::saving(function ($model) {
            $model->consumer_id = auth()->user()->id;
        });
    }

    public function consumer(): BelongsTo
    {
        return $this->belongsTo(User::class, 'consumer_id', 'id');
    }

    public function provider(): BelongsTo
    {
        return $this->belongsTo(User::class, 'provider_id', 'id');
    }

    public function service(): BelongsTo
    {
        return $this->belongsTo(Service::class, 'service_id', 'id');
    }
}
