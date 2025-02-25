<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLeadTimelineTable extends Migration
{
    public function up()
    {
        Schema::create('lead_timeline', function (Blueprint $table) {
            $table->id();
            $table->foreignId('lead_id')->constrained()->onDelete('cascade');  // Foreign key to leads table
            $table->string('action');  // Action like 'Lead purchased', 'Status changed', etc.
            $table->timestamp('action_time');  // Time when the action occurred
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('lead_timeline');
    }
}

