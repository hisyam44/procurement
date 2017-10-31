<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePettiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('petties', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('t100rb');
            $table->integer('t50rb');
            $table->integer('t20rb');
            $table->integer('t10rb');
            $table->integer('t5rb');
            $table->integer('t2rb');
            $table->integer('t1rb');
            $table->integer('t500r');
            $table->integer('t200r');
            $table->integer('t100r');
            $table->integer('total');
            $table->string('admin');
            $table->string('approval_1');
            $table->string('approval_2');
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
        Schema::drop('petties');
    }
}
