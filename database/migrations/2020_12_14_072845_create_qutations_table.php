<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQutationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qutations', function (Blueprint $table) {
            $table->id();
            $table->string('status')->nullable();
            $table->float('sub_total', 8, 2)->nullable();
            $table->float('delivery_fee', 8, 2)->nullable();
            $table->boolean('includeDelivery')->nullable();
            $table->float('rival_fees')->nullable();
            $table->string('paymentMethod')->nullable();
            $table->unsignedBigInteger('qutation_order_id')->nullable();
            $table->foreign('qutation_order_id')->references('id')->on('qutation_orders');
            $table->unsignedBigInteger('trader_id')->nullable();
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
        Schema::dropIfExists('qutations');
    }
}
