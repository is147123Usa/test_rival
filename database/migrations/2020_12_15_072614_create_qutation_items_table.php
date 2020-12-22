<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQutationItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qutation_items', function (Blueprint $table) {
            $table->id();
            $table->integer('price');
            $table->integer('qty');
            $table->integer('includeVat')->nullable();
            $table->string('img');
            $table->string('item_desc');
            $table->longText('note')->nullable();

            $table->unsignedBigInteger('qutition_id')->nullable();
            $table->foreign('qutition_id')->references('id')->on('qutations');
            $table->unsignedBigInteger('qutation_order_item_id')->nullable();
            $table->foreign('qutation_order_item_id')->references('id')->on('qutation_order_items');
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
        Schema::dropIfExists('qutation_items');
    }
}
