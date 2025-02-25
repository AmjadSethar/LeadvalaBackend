<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLeadStatusesTable extends Migration
{
    public function up()
    {
        Schema::create('lead_statuses', function (Blueprint $table) {
            $table->id();
            $table->foreignId('lead_id')->constrained()->onDelete('cascade');  // Link to the leads table
            $table->string('status');  // Status like 'new', 'in_progress', 'completed', etc.
            $table->timestamp('status_time');  // When the status was set
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('lead_statuses');
    }
}
