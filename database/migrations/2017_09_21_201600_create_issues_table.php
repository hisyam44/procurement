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
            $table->integer('unit_id')->unsigned();
            $table->integer('operator_id')->unsigned();
            $table->foreign('operator_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('hod_id')->unsigned();
            $table->integer('admin_id')->unsigned();
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
