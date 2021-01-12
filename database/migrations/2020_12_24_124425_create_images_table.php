<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    { 
        Schema::create('images', function (Blueprint $table) {
            $table->id();
            $table->string('avatar')->nullable();
            $table->string('identitiyProve_driver')->nullable();
            $table->string('licesnse_image')->nullable();
            $table->string('carImage')->nullable();
            $table->string('plant_no')->nullable();
            $table->string('identitiyProve_car')->nullable();
            $table->unsignedBigInteger('driver_id')->nullable();
            $table->foreign('driver_id')->references('id')->on('drivers');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('images');
    }
}
