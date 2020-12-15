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
            $table->string('price');
            $table->string('img');
            $table->string('item_desc');
            $table->unsignedBigInteger('qutition_id')->nullable();
            $table->foreign('qutition_id')->references('id')->on('qutitions');
            $table->logText('note')->nullable();
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
