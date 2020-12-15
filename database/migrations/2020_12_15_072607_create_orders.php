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
            $table->string('deosInclude_delivery');
            $table->string('delivery_fees')->nallable();
            $table->string('tax');
            $table->string('sub-total');
            $table->string('total');
            
            $table->unsignedBigInteger('delivery_id')->nullable();
            $table->foreign('delivery_id')->references('id')->on('delivery_offers');

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
