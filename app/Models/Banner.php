<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Banner extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia;

    protected $fillable = [
        'title',
        'images',
        'type',
        'related_id',
        'is_offer',
        'status',
    ];

    protected $casts = [
        'images' => 'array',
        'status' => 'integer',
        'is_offer' => 'integer',
    ];

    protected $with = [
        'media',
    ];
}
