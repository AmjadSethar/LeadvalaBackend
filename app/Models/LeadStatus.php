<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeadStatus extends Model
{
    use HasFactory;

    protected $fillable = [
        'lead_id',
        'status',
        'status_time',
    ];

    public function lead()
    {
        return $this->belongsTo(Lead::class);
    }
}
