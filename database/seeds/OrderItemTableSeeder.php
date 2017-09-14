<?php

use Illuminate\Database\Seeder;

class OrderItemTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        \DB::table('order_item')->delete();
        
        \DB::table('order_item')->insert(array (
            0 => 
            array (
                'id' => 1,
                'item_id' => 1,
                'order_id' => 1,
                'qty' => '1',
                'unit_price' => '6500000',
                'description' => 'Server',
                'created_at' => '2017-09-11 10:42:41',
                'updated_at' => '2017-09-11 10:42:41',
            ),
            1 => 
            array (
                'id' => 2,
                'item_id' => 2,
                'order_id' => 1,
                'qty' => '1',
                'unit_price' => '1100000',
                'description' => 'LED LG 20" 20MP48 IPS Panel',
                'created_at' => '2017-09-11 10:42:41',
                'updated_at' => '2017-09-11 10:42:41',
            ),
        ));
    }
}
