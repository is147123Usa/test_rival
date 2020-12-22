<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQutationReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qutation_reports', function (Blueprint $table) {
            $table->id();             

            $table->string('reason')->nullable();
            $table->unsignedBigInteger('sender_id')->nullable();
            $table->foreign('sender_id')->references('id')->on('users');
            
            $table->unsignedBigInteger('compain_sender_id')->nullable();
            $table->foreign('compain_sender_id')->references('id')->on('users');
            
            $table->unsignedBigInteger('qutation_id')->nullable();
            $table->foreign('qutation_id')->references('id')->on('qutations');

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
        Schema::dropIfExists('qutation_reports');
    }
}
