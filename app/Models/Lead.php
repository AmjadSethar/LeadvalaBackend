<?php
// app/Models/Lead.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lead extends Model
{
    use HasFactory;

    // Define the fillable properties
    protected $fillable = [
        'user_id',
        'service_id',
        'payment_status',
    ];

    // Define relationship with LeadTimeline model
    public function timeline()
    {
        return $this->hasMany(LeadTimeline::class);
    }

    // Define relationship with Service model
    public function service()
    {
        return $this->belongsTo(Service::class);
    }

    // Define relationship with User model
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
