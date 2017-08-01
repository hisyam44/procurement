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
        Schema::create('costcodes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('lv1');
            $table->string('lv2');
            $table->string('lv3');
            $table->string('kode');
            $table->string('description');
            $table->string('uom');
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
        Schema::drop('costcodes');
    }
}
