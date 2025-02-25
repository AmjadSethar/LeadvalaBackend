<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeadTimeline extends Model
{
    use HasFactory;

    // Define the fillable properties
    protected $fillable = [
        'lead_id',
        'action',
        'action_time',
    ];

    // Define relationship with Lead model
    public function lead()
    {
        return $this->belongsTo(Lead::class);
    }
}
