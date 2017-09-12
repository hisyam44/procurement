<?php

use Illuminate\Database\Seeder;

class ItemsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        \DB::table('items')->delete();
        
        \DB::table('items')->insert(array (
            0 => 
            array (
                'id' => 1,
                'item_no' => '155000001',
                'description' => 'asd',
                'uom' => 'Packet',
                'weight' => '1 Kg',
                'dimension' => '12 x 12 x 12 M',
                'shelf_life' => '12 Jam',
                'warranty' => '12 Tahun',
                'remark' => 'L',
            'component' => 'PG (Personal Gadget)',
                'created_at' => '2017-09-11 10:39:25',
                'updated_at' => '2017-09-11 10:39:25',
            ),
        ));
    }
}
