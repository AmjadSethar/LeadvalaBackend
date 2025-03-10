<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            
            $table->string('title')->nullable();
            $table->decimal('price')->nullable();
            $table->boolean('status')->default(1);
            $table->string('duration')->nullable();
            $table->string('duration_unit')->nullable();
            $table->string('phone_number')->nullable();
            $table->string('audio')->nullable();
            $table->enum('type_of_tenant', ['Family', 'Bachelor', 'Working Professionals'])->nullable();
            $table->decimal('budget', 10, 2)->nullable();
            $table->enum('service_type', ['buy', 'rent', 'sell'])->nullable()->after('existing_column_name'); // Replace 'existing_column_name' with the actual column after which the new column will be added
            $table->decimal('service_rate', 8, 2)->nullable();
            $table->decimal('discount', 8, 2)->nullable();
            $table->decimal('per_serviceman_commission',4,2)->nullable();
            $table->longText('description')->nullable();
            $table->longText('speciality_description')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->enum('type', ['fixed', 'free'])->nullable();
            $table->boolean('is_featured')->nullable()->default('0');
            $table->string('required_servicemen')->nullable();
            $table->string('meta_title')->nullable();
            $table->string('slug')->nullable();
            $table->string('meta_description')->nullable();
            $table->bigInteger('created_by_id')->unsigned()->nullable();
            $table->integer('is_random_related_services')->default(0)->nullable();
            $table->bigInteger('tax_id')->unsigned()->nullable();
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('tax_id')->references('id')->on('taxes')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });

        Schema::create('service_categories', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('service_id');
            $table->unsignedBigInteger('category_id');

            $table->foreign('service_id')->references('id')->on('services')->onDelete('cascade')->nullable();
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade')->nullable();
        });

        Schema::create('related_services', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('service_id')->nullable();
            $table->unsignedBigInteger('related_service_id')->nullable();

            $table->foreign('service_id')->references('id')->on('services')->onDelete('cascade')->nullable();
            $table->foreign('related_service_id')->references('id')->on('services')->onDelete('cascade')->nullable();
        });

        Schema::create('services_coupons', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('coupon_id')->unsigned()->nullable();
            $table->bigInteger('service_id')->unsigned()->nullable();

            $table->foreign('coupon_id')->references('id')->on('coupons')->onDelete('cascade');
            $table->foreign('service_id')->references('id')->on('services')->onDelete('cascade');
        });

        Schema::create('exclude_services_coupons', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('coupon_id')->unsigned()->nullable();
            $table->bigInteger('service_id')->unsigned()->nullable();

            $table->foreign('coupon_id')->references('id')->on('coupons')->onDelete('cascade');
            $table->foreign('service_id')->references('id')->on('services')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('services');
        Schema::dropIfExists('related_services');
        Schema::dropIfExists('service_categories');
    }
};
