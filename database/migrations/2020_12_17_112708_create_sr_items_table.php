<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSrItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sr_items', function (Blueprint $table) {
            $table->id();
            $table->string('img')->nullable();
            $table->string('name')->nullable();
            $table->string('item_desc')->nullable();

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
        Schema::dropIfExists('sr_items');
    }
}
