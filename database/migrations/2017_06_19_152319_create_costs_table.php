<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('costs', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('transaksi_id')->unsigned();
            $table->foreign('transaksi_id')->references('id')->on('transaksi')->onDelete('cascade');
            $table->integer('costcode_id')->unsigned();
            $table->integer('costcode_lv4_id')->unsigned();
            $table->integer('construction_description_id')->unsigned();
            $table->enum('type',['debet','credit'])->default('debet');
            $table->enum('cost_type',['MT','LB','EQ','SC','OH'])->default('MT');
            $table->string('amount');
            $table->string('saldo');
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
        Schema::drop('costs');
    }
}
