<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQutationOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qutation_order_items', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('item_desc');
            $table->unsignedBigInteger('qutation_order_id');
            $table->foreign('qutation_order_id')->references('id')->on('qutation_orders');
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
        Schema::dropIfExists('qutation_order_items');
    }
}
