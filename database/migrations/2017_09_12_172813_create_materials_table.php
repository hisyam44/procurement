<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('materials', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('unit_id')->unsigned();
            $table->integer('order_id')->unsigned();
            $table->integer('operator_id')->unsigned();
            $table->foreign('operator_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('hod_id')->unsigned();
            $table->integer('admin_id')->unsigned();
            $table->string('deliveryman');
            $table->string('lokasi');
            $table->string('diketahui');
            $table->string('diterima');
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
        Schema::drop('materials');
    }
}
