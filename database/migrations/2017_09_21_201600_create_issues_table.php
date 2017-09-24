<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIssuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('issues', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('unit_id');
            $table->string('no');
            $table->string('lokasi');
            $table->string('sn');
            $table->string('hm');
            $table->string('diketahui');
            $table->string('diterima');
            $table->string('diserahkan');
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
        Schema::drop('issues');
    }
}
