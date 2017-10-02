<?php

use Illuminate\Database\Seeder;

class OrderItemTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('order_item')->delete();
        
        \DB::table('order_item')->insert(array (
            0 => 
            array (
                'id' => 1,
                'item_id' => 1,
                'order_id' => 1,
                'qty' => '10',
                'unit_price' => '10000',
                'description' => 'Request this Part Item 10',
                'created_at' => '2017-10-02 13:02:10',
                'updated_at' => '2017-10-02 13:02:10',
            ),
            1 => 
            array (
                'id' => 2,
                'item_id' => 2,
                'order_id' => 1,
                'qty' => '15',
                'unit_price' => '13000',
                'description' => 'Request this Part Item  15',
                'created_at' => '2017-10-02 13:02:11',
                'updated_at' => '2017-10-02 13:02:11',
            ),
        ));
        
        
    }
}
