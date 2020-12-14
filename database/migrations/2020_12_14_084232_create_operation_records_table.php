<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOperationRecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('operation_records', function (Blueprint $table) {
            $table->id();
            $table->longText('OprationDesc');
            $table->string('status');
            $table->string('depit');
            $table->string('crdit');
            $table->float('balance_before',8, 2);
            $table->float('balance_after',8, 2);
            $table->string('refer_no')->nullable();
            $table->longText('notes')->nullable();
            
            $table->unsignedBigInteger('oprationType')->nullable();
            $table->foreign('oprationType')->references('id')->on('operation_types');

            $table->unsignedBigInteger('wallet_id')->nullable();
            $table->foreign('wallet_id')->references('id')->on('wallets');
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
        Schema::dropIfExists('operation_records');
    }
}
