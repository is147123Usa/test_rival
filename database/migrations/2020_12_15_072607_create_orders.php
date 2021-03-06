<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();

            $table->string('operation_code');
            $table->string('payment_method')->nallable();
            $table->string('delivery_location')->nallable();
            $table->string('deosInclude_delivery')->nallable();
            $table->float('delivery_fees', 8, 2)->nullable();
            $table->float('rival_fees', 8, 2)->nullable();
            $table->string('delivery_time')->nullable();
            $table->float('sub_total', 8, 2)->nullable();
            $table->float('total', 8, 2)->nullable();
            
            $table->integer('isPaid')->default(0);
            $table->string('status')->default('pending');;

            $table->unsignedBigInteger('qutation_id')->nullable();
            $table->foreign('qutation_id')->references('id')->on('qutations');

            $table->unsignedBigInteger('client_id')->nullable();
            $table->foreign('client_id')->references('id')->on('users');

           

            $table->unsignedBigInteger('trader_id');
            $table->foreign('trader_id')->references('id')->on('traders');

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
        Schema::dropIfExists('orders');
    }
}
