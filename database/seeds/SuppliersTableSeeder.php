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
        
        \DB::table('itemcodes')->delete();
        
        \DB::table('itemcodes')->insert(array (
            0 => 
            array (
                'id' => 1,
            'name' => 'CG (Capital Good)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
            1 => 
            array (
                'id' => 2,
            'name' => 'SP (Spares)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
            2 => 
            array (
                'id' => 3,
            'name' => 'CN (Consumable)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
            3 => 
            array (
                'id' => 4,
            'name' => 'OE (Office Equipment)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
            4 => 
            array (
                'id' => 5,
            'name' => 'TL (Tools & Tackles)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
            5 => 
            array (
                'id' => 6,
            'name' => 'CM (Construction Material)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
            6 => 
            array (
                'id' => 7,
            'name' => 'RP (Repairs)',
                'created_at' => '2017-11-02 04:47:08',
                'updated_at' => '2017-11-02 04:47:08',
            ),
        ));

         \DB::table('itemcode2')->delete();
        
        \DB::table('itemcode2')->insert(array (
            0 => 
            array (
                'id' => 1,
                'itemcode_id' => 1,
            'name' => 'HE (Heavy Equipment)',
                'created_at' => '2017-11-02 05:02:18',
                'updated_at' => '2017-11-02 05:02:18',
            ),
            1 => 
            array (
                'id' => 2,
                'itemcode_id' => 1,
            'name' => 'TK (Trucks)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            2 => 
            array (
                'id' => 3,
                'itemcode_id' => 1,
            'name' => 'PT (Plants)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            3 => 
            array (
                'id' => 4,
                'itemcode_id' => 1,
            'name' => 'CM (Construction Material)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            4 => 
            array (
                'id' => 5,
                'itemcode_id' => 2,
            'name' => 'HE (Heavy Equipment)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            5 => 
            array (
                'id' => 6,
                'itemcode_id' => 2,
            'name' => 'TK (Trucks)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            6 => 
            array (
                'id' => 7,
                'itemcode_id' => 2,
            'name' => 'PT (Plants)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            7 => 
            array (
                'id' => 8,
                'itemcode_id' => 3,
            'name' => 'FL (Fuel)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            8 => 
            array (
                'id' => 9,
                'itemcode_id' => 3,
            'name' => 'LU (Lubes)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            9 => 
            array (
                'id' => 10,
                'itemcode_id' => 3,
            'name' => 'CH (Chemical)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            10 => 
            array (
                'id' => 11,
                'itemcode_id' => 3,
            'name' => 'CL (Cleaning Material)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            11 => 
            array (
                'id' => 12,
                'itemcode_id' => 4,
            'name' => 'FR (Furniture)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            12 => 
            array (
                'id' => 13,
                'itemcode_id' => 4,
            'name' => 'MI (Mechanical Installation)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            13 => 
            array (
                'id' => 14,
                'itemcode_id' => 4,
            'name' => 'EI (Electrical Installation)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            14 => 
            array (
                'id' => 15,
                'itemcode_id' => 4,
            'name' => 'ST (Stationary)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            15 => 
            array (
                'id' => 16,
                'itemcode_id' => 5,
            'name' => 'HT (Hand Tools)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            16 => 
            array (
                'id' => 17,
                'itemcode_id' => 5,
            'name' => 'PT (Power Tools)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            17 => 
            array (
                'id' => 18,
                'itemcode_id' => 5,
            'name' => 'ST (Special Tools)',
                'created_at' => '2017-11-02 05:02:19',
                'updated_at' => '2017-11-02 05:02:19',
            ),
            18 => 
            array (
                'id' => 19,
                'itemcode_id' => 5,
            'name' => 'LT (Lifting Tools)',
                'created_at' => '2017-11-02 05:02:20',
                'updated_at' => '2017-11-02 05:02:20',
            ),
            19 => 
            array (
                'id' => 20,
                'itemcode_id' => 5,
            'name' => 'PG (Personal Gadget)',
                'created_at' => '2017-11-02 05:02:20',
                'updated_at' => '2017-11-02 05:02:20',
            ),
            20 => 
            array (
                'id' => 21,
                'itemcode_id' => 6,
            'name' => 'AG (Aggregate)',
                'created_at' => '2017-11-02 05:02:20',
                'updated_at' => '2017-11-02 05:02:20',
            ),
            21 => 
            array (
                'id' => 22,
                'itemcode_id' => 6,
            'name' => 'BT (Bitumen)',
                'created_at' => '2017-11-02 05:02:20',
                'updated_at' => '2017-11-02 05:02:20',
            ),
            22 => 
            array (
                'id' => 23,
                'itemcode_id' => 6,
            'name' => 'ST (Steel)',
                'created_at' => '2017-11-02 05:02:20',
                'updated_at' => '2017-11-02 05:02:20',
            ),
            23 => 
            array (
                'id' => 24,
                'itemcode_id' => 6,
            'name' => 'CT (Cement)',
                'created_at' => '2017-11-02 05:02:20',
                'updated_at' => '2017-11-02 05:02:20',
            ),
        ));

        \DB::table('itemcode3')->delete();
        
        \DB::table('itemcode3')->insert(array (
            0 => 
            array (
                'id' => 1,
                'itemcode2_id' => 1,
            'name' => 'EX (Excavator)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            1 => 
            array (
                'id' => 2,
                'itemcode2_id' => 1,
            'name' => 'DZ (Bulldozer)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            2 => 
            array (
                'id' => 3,
                'itemcode2_id' => 1,
            'name' => 'GD (Motor Grader)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            3 => 
            array (
                'id' => 4,
                'itemcode2_id' => 1,
            'name' => 'CM (Compactor/Vibro)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            4 => 
            array (
                'id' => 5,
                'itemcode2_id' => 1,
            'name' => 'PV (Paver)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            5 => 
            array (
                'id' => 6,
                'itemcode2_id' => 2,
            'name' => 'DT (Dump Truck)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            6 => 
            array (
                'id' => 7,
                'itemcode2_id' => 2,
            'name' => 'FT (Fuel Truck)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            7 => 
            array (
                'id' => 8,
                'itemcode2_id' => 2,
            'name' => 'LT (Lube Truck)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            8 => 
            array (
                'id' => 9,
                'itemcode2_id' => 2,
            'name' => 'WT (Water Truck)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            9 => 
            array (
                'id' => 10,
                'itemcode2_id' => 2,
            'name' => 'TT (Trailer)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            10 => 
            array (
                'id' => 11,
                'itemcode2_id' => 2,
            'name' => 'AT (Articulated Truck)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            11 => 
            array (
                'id' => 12,
                'itemcode2_id' => 3,
            'name' => 'SC (Stone Crusher)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            12 => 
            array (
                'id' => 13,
                'itemcode2_id' => 3,
            'name' => 'AM (Alphalt Mixing Plant)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            13 => 
            array (
                'id' => 14,
                'itemcode2_id' => 3,
            'name' => 'BP (Concrete Batching Plant)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            14 => 
            array (
                'id' => 15,
                'itemcode2_id' => 4,
            'name' => 'AG (Aggregates)',
                'created_at' => '2017-11-02 05:09:26',
                'updated_at' => '2017-11-02 05:09:26',
            ),
            15 => 
            array (
                'id' => 16,
                'itemcode2_id' => 4,
            'name' => 'GT (Geotextile)',
                'created_at' => '2017-11-02 05:09:27',
                'updated_at' => '2017-11-02 05:09:27',
            ),
            16 => 
            array (
                'id' => 17,
                'itemcode2_id' => 4,
            'name' => 'FN (Fencing Material)',
                'created_at' => '2017-11-02 05:09:27',
                'updated_at' => '2017-11-02 05:09:27',
            ),
            17 => 
            array (
                'id' => 18,
                'itemcode2_id' => 4,
            'name' => 'LT (Lighting Equipment)',
                'created_at' => '2017-11-02 05:09:27',
                'updated_at' => '2017-11-02 05:09:27',
            ),
            18 => 
            array (
                'id' => 19,
                'itemcode2_id' => 4,
            'name' => 'DR (Drainage Material)',
                'created_at' => '2017-11-02 05:09:27',
                'updated_at' => '2017-11-02 05:09:27',
            ),
            19 => 
            array (
                'id' => 20,
                'itemcode2_id' => 4,
            'name' => 'CP (Chemical & Paints)',
                'created_at' => '2017-11-02 05:09:27',
                'updated_at' => '2017-11-02 05:09:27',
            ),
            20 => 
            array (
                'id' => 21,
                'itemcode2_id' => 4,
                'name' => 'BR (Barriers',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                21 => 
                array (
                    'id' => 22,
                    'itemcode2_id' => 5,
                    'name' => 'Ground Engaging Tools',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                22 => 
                array (
                    'id' => 23,
                    'itemcode2_id' => 5,
                    'name' => 'Engine ',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                23 => 
                array (
                    'id' => 24,
                    'itemcode2_id' => 5,
                    'name' => 'Work Equipment',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                24 => 
                array (
                    'id' => 25,
                    'itemcode2_id' => 5,
                    'name' => 'Undercarriage',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                25 => 
                array (
                    'id' => 26,
                    'itemcode2_id' => 5,
                    'name' => 'Electrical',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                26 => 
                array (
                    'id' => 27,
                    'itemcode2_id' => 5,
                    'name' => 'Hydraulic System',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                27 => 
                array (
                    'id' => 28,
                    'itemcode2_id' => 5,
                    'name' => 'Power Train',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                28 => 
                array (
                    'id' => 29,
                    'itemcode2_id' => 5,
                    'name' => 'Tires',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                29 => 
                array (
                    'id' => 30,
                    'itemcode2_id' => 5,
                    'name' => 'Transmission',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                30 => 
                array (
                    'id' => 31,
                    'itemcode2_id' => 5,
                    'name' => 'Differential',
                    'created_at' => '2017-11-02 05:09:27',
                    'updated_at' => '2017-11-02 05:09:27',
                ),
                31 => 
                array (
                    'id' => 32,
                    'itemcode2_id' => 6,
                    'name' => 'Engine ',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                32 => 
                array (
                    'id' => 33,
                    'itemcode2_id' => 6,
                    'name' => 'Tires',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                33 => 
                array (
                    'id' => 34,
                    'itemcode2_id' => 6,
                    'name' => 'Electrical',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                34 => 
                array (
                    'id' => 35,
                    'itemcode2_id' => 6,
                    'name' => 'Hydraulic System',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                35 => 
                array (
                    'id' => 36,
                    'itemcode2_id' => 6,
                    'name' => 'Transmission',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                36 => 
                array (
                    'id' => 37,
                    'itemcode2_id' => 6,
                    'name' => 'Differential',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                37 => 
                array (
                    'id' => 38,
                    'itemcode2_id' => 6,
                    'name' => 'Attachments',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                38 => 
                array (
                    'id' => 39,
                    'itemcode2_id' => 6,
                    'name' => 'Cabin',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                39 => 
                array (
                    'id' => 40,
                    'itemcode2_id' => 6,
                    'name' => 'Chassis',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                40 => 
                array (
                    'id' => 41,
                    'itemcode2_id' => 7,
                    'name' => 'Electrical ',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                41 => 
                array (
                    'id' => 42,
                    'itemcode2_id' => 7,
                    'name' => 'Conveyor System',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                42 => 
                array (
                    'id' => 43,
                    'itemcode2_id' => 8,
                'name' => 'IH (Industrial HSD)',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                43 => 
                array (
                    'id' => 44,
                    'itemcode2_id' => 8,
                'name' => 'LH (SPBU HSD)',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                44 => 
                array (
                    'id' => 45,
                    'itemcode2_id' => 8,
                'name' => 'PR (Premium)',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                45 => 
                array (
                    'id' => 46,
                    'itemcode2_id' => 10,
                'name' => 'CC (Cleaning Chemical)',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                46 => 
                array (
                    'id' => 47,
                    'itemcode2_id' => 10,
                'name' => 'LC (Lab Chemical)',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
                47 => 
                array (
                    'id' => 48,
                    'itemcode2_id' => 10,
                'name' => 'OT (Others)',
                    'created_at' => '2017-11-02 05:09:28',
                    'updated_at' => '2017-11-02 05:09:28',
                ),
            ));    
    
    }
}
