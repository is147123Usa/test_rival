<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTradersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('traders', function (Blueprint $table) {
            $table->id();
            $table->string('activityName');
            $table->string('CRN');
            $table->string('tax_no')->nullable();
            $table->string('address')->nullable();
            $table->string('address_2')->nullable();
            $table->string('mailBox')->nullable();
            $table->string('status')->default('pending');
            $table->unsignedBigInteger('spicalizition_id')->nullable();
            $table->foreign('spicalizition_id')->references('id')->on('categories');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users');
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
        Schema::dropIfExists('traders');
    }
}
