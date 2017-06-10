<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('requests', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('purchase_id')->unsigned();
            $table->string('department');
            $table->string('no');
            $table->string('component');
            $table->string('description');
            $table->string('qty');
            $table->string('satuan');
            $table->string('model');
            $table->string('device_code');
            $table->string('damage_description');
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
        Schema::drop('requests');
    }
}
