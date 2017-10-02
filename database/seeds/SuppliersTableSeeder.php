<?php

use Illuminate\Database\Seeder;

class SuppliersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('suppliers')->delete();
        
        \DB::table('suppliers')->insert(array (
            0 => 
            array (
                'id' => 1,
                'no' => '2016 - 0001',
            'type' => 'Perseroan Komanditer(CV)',
                'name' => 'Megakom',
                'address' => 'Jl Manggis No 45
Sampangan, Pekalongan Timur
Kota Pekalongan, Jawa Tengah 51126',
                'phone' => '62 285 421864',
                'attn' => 'Danny Tanuwinata',
                'email' => 'admin1@admin.com',
                'contact' => '62 285 421864',
                'description' => 'Sampangan, Pekalongan Timur',
                'created_at' => NULL,
                'updated_at' => '2017-10-02 12:41:26',
            ),
        ));
        
        
    }
}
