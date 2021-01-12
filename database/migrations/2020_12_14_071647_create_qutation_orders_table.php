<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQutationOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qutation_orders', function (Blueprint $table) {
            $table->id();
            $table->string('qutastion_status')->nullable();
            $table->string('payMethod')->nullable();
            $table->string('Status')->default('pending');
            $table->unsignedBigInteger('client_id')->nullable();
            $table->unsignedBigInteger('cat_id')->nullable();

            $table->foreign('client_id')->references('id')->on('users');
            $table->foreign('cat_id')->references('id')->on('categories');

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
        Schema::dropIfExists('qutation_orders');
    }
}
