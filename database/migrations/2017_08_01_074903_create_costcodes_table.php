<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCostcodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('itemcode3', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('itemcode2_id')->unsigned();
            $table->foreign('itemcode2_id')->references('id')->on('itemcode2')->onDelete('cascade');
            $table->string('name');
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
        Schema::drop('itemcode3');
    }
}
