<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUnitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('units', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code');
            $table->string('date_commissioning');
            $table->string('smu_km');
            $table->string('gps');
            $table->string('type');
            $table->string('make');
            $table->string('model');
            $table->string('no_registration');
            $table->string('stnk_ex');
            $table->string('kir_ex');
            $table->string('serial_no');
            $table->string('engine_no');
            $table->string('power_rating');
            $table->string('capacity');
            $table->string('operation_weight');
            $table->string('yom');
            $table->string('remarks');
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
        Schema::drop('units');
    }
}
