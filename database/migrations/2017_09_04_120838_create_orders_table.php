<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('supplier_id')->unsigned();
            $table->enum('type',['ho','local'])->default('ho');
            $table->string('no');
            $table->string('address');
            $table->string('reference_no');
            $table->string('dispatch_to');
            $table->string('dispatch_address');
            $table->string('dispatch_name');
            $table->string('payment_term');
            $table->string('incoterms');
            $table->date('delivery_date');
            $table->string('sub_total');
            $table->string('tax');
            $table->string('total');
            $table->string('warranty');
            $table->string('author');
            $table->string('diketahui');
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
        Schema::drop('orders');
    }
}
