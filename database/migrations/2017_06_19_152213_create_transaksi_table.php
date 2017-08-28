<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransaksiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaksi', function (Blueprint $table) {
            $table->increments('id');
            $table->string('no_voucher');
            $table->integer('accounting_id')->unsigned();
            $table->enum('type',['cash','bank','iou','ious'])->default('cash');
            $table->string('project_name');
            $table->string('project_code');
            $table->string('receiver');
            $table->string('receiver_rekening');
            $table->string('bank');
            $table->string('bank_details');
            $table->string('amount_total');
            $table->string('direksi');
            $table->string('kepala_bagian');
            $table->string('kasir');
            $table->string('penerima');
            $table->string('attachment');
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
        Schema::drop('transaksi');
    }
}
