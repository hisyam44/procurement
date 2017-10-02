<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReturnItemTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('return_item', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('return_id')->unsigned();
            $table->foreign('return_id')->references('id')->on('returns')->onDelete('cascade');
            $table->integer('part_id')->unsigned();
            $table->string('name');
            $table->string('qty');
            $table->string('keterangan');
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
        Schema::drop('return_item');
    }
}
