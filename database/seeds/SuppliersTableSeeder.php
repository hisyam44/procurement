<?php

use Illuminate\Database\Seeder;

class SuppliersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('suppliers')->delete();
        
        \DB::table('suppliers')->insert(array (
            0 => 
            array (
                'id' => 1,
                'no' => '2016 - 0001',
                'name' => 'Megakom',
                'address' => 'Jl Manggis No 45
Sampangan, Pekalongan Timur
Kota Pekalongan, Jawa Tengah 51126',
                'phone' => '62 285 421864',
                'attn' => 'Danny Tanuwinata
',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
    }
}
