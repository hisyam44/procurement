<?php

use Illuminate\Database\Seeder;

class OrdersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        \DB::table('orders')->delete();
        
        \DB::table('orders')->insert(array (
            0 => 
            array (
                'id' => 1,
                'supplier_id' => 1,
                'type' => 'ho',
                'no' => 'HO 1-001',
                'address' => '51, Jl Raya Pekajangan Kec Kedungwuni, Kab Pekalongan Jawa Tengah , 51173 logistic.pbtr@sumbermitrajaya.com',
                'reference_no' => 'GPR 01111 dt. 20082017',
                'dispatch_to' => 'PT Sumber Mitra Jaya',
                'dispatch_address' => 'Gudang Base Camp Jl Raya Bojong Kajen Wangandowo, Jawa Tengah 51156',
                'dispatch_name' => 'Mawardi',
                'payment_term' => 'Wangandowo',
                'incoterms' => 'DDP',
                'delivery_date' => '2017-09-11',
                'sub_total' => '7600000',
                'tax' => '0',
                'total' => '7600000',
                'warranty' => ' 2 Years from date of install ',
                'author' => 'Slamet',
                'diketahui' => 'Siti',
                'created_at' => '2017-09-11 00:00:00',
                'updated_at' => '2017-09-11 10:42:41',
            ),
        ));
        \DB::table('item_part_no')->insert(array (
            0 => 
            array (
                'id' => 1,
                'item_id' => 1,
                'code' => 'GH125415',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            1 => 
            array (
                'id' => 2,
                'item_id' => 1,
                'code' => 'HH123762',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
        ));
    }
}
