<?php

use Illuminate\Database\Seeder;

class OrdersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        \DB::table('purchases')->delete();
        
        \DB::table('purchases')->insert(array (
            0 => 
            array (
                'id' => 1,
                'unit_id' => 94,
                'operator_id' => 3,
                'no' => '00001',
                'type' => 'BD',
                'department' => 'Engineering',
                'mol' => '12/10-2017',
                'km_hm' => '21',
                'warehouse_manager' => 'Siti',
                'maintenance_manager' => 'Slamet',
                'project_manager' => 'Veera',
                'purpose' => 'fix',
                'created_at' => '2017-10-02 00:00:00',
                'updated_at' => '2017-10-02 13:00:55',
            ),
        ));

        \DB::table('requests')->delete();
        
        \DB::table('requests')->insert(array (
            0 => 
            array (
                'id' => 1,
                'purchase_id' => 1,
                'part_no_id' => 1,
            'component' => 'PG (Personal Gadget)',
                'description' => 'asd',
                'qty' => '10',
                'model' => '2017-10-02',
                'damage_description' => 'Request this Part Item 10',
                'created_at' => '2017-10-02 13:00:55',
                'updated_at' => '2017-10-02 13:00:55',
            ),
            1 => 
            array (
                'id' => 2,
                'purchase_id' => 1,
                'part_no_id' => 2,
            'component' => 'PG (Personal Gadget)',
                'description' => 'asd',
                'qty' => '15',
                'model' => '2017-10-02',
                'damage_description' => 'Request this Part Item  15',
                'created_at' => '2017-10-02 13:00:55',
                'updated_at' => '2017-10-02 13:00:55',
            ),
        ));

        \DB::table('orders')->delete();
        
        \DB::table('orders')->insert(array (
            0 => 
            array (
                'id' => 1,
                'supplier_id' => 1,
                'purchase_id' => 1,
                'operator_id' => 3,
                'type' => 'ho',
                'no' => 'HO 1-001',
                'address' => '51, Jl Raya Pekajangan Kec Kedungwuni, Kab Pekalongan Jawa Tengah , 51173 logistic.pbtr@sumbermitrajaya.com',
                'reference_no' => '00001',
                'dispatch_to' => 'PT Sumber Mitra Jaya',
                'dispatch_address' => 'Gudang Base Camp Jl Raya Bojong Kajen Wangandowo, Jawa Tengah 51156',
                'dispatch_name' => 'Mawardi',
                'payment_term' => 'Wangandowo',
                'incoterms' => 'DDP',
                'ship_by' => 'air',
                'delivery_date' => '2017-10-02',
                'sub_total' => '295000',
                'tax' => '29500',
                'diskon' => '0',
                'total' => '265500',
                'warranty' => ' 2 Years from date of install',
                'author' => 'Slamet',
                'diketahui' => 'Sumardi',
                'created_at' => '2017-10-02 00:00:00',
                'updated_at' => '2017-10-02 13:02:10',
            ),
        ));
        
        \DB::table('materials')->delete();
        
        \DB::table('materials')->insert(array (
            0 => 
            array (
                'id' => 1,
                'unit_id' => 94,
                'order_id' => 1,
                'operator_id' => 3,
                'deliveryman' => '0',
                'lokasi' => 'Logistik',
                'diketahui' => 'Sumardi',
                'diterima' => 'Mawardi',
                'created_at' => '2017-10-02 00:00:00',
                'updated_at' => '2017-10-02 13:07:04',
            ),
            1 => 
            array (
                'id' => 2,
                'unit_id' => 94,
                'order_id' => 1,
                'operator_id' => 3,
                'deliveryman' => '0',
                'lokasi' => 'Logistik',
                'diketahui' => 'Sumardi',
                'diterima' => 'Mawardi',
                'created_at' => '2017-10-02 00:00:00',
                'updated_at' => '2017-10-02 13:07:31',
            ),
        ));

        \DB::table('material_item')->delete();
        
        \DB::table('material_item')->insert(array (
            0 => 
            array (
                'id' => 1,
                'material_id' => 1,
                'partno_id' => 1,
            'part_name' => 'PG (Personal Gadget)',
                'qty' => '5',
                'net' => '21',
                'description' => 'Request this Part Item 10',
                'created_at' => '2017-10-02 13:07:04',
                'updated_at' => '2017-10-02 13:07:04',
            ),
            1 => 
            array (
                'id' => 2,
                'material_id' => 1,
                'partno_id' => 2,
            'part_name' => 'PG (Personal Gadget)',
                'qty' => '8',
                'net' => '12',
                'description' => 'Request this Part Item  15',
                'created_at' => '2017-10-02 13:07:04',
                'updated_at' => '2017-10-02 13:07:04',
            ),
            2 => 
            array (
                'id' => 3,
                'material_id' => 2,
                'partno_id' => 1,
            'part_name' => 'PG (Personal Gadget)',
                'qty' => '5',
                'net' => '43',
                'description' => 'Request this Part Item 10',
                'created_at' => '2017-10-02 13:07:31',
                'updated_at' => '2017-10-02 13:07:31',
            ),
            3 => 
            array (
                'id' => 4,
                'material_id' => 2,
                'partno_id' => 2,
            'part_name' => 'PG (Personal Gadget)',
                'qty' => '7',
                'net' => '23',
                'description' => 'Request this Part Item  15',
                'created_at' => '2017-10-02 13:07:31',
                'updated_at' => '2017-10-02 13:07:31',
            ),
        ));

        \DB::table('issues')->delete();
        
        \DB::table('issues')->insert(array (
            0 => 
            array (
                'id' => 1,
                'unit_id' => 94,
                'operator_id' => 3,
                'no' => '20170001',
                'lokasi' => 'Wangandowo',
                'sn' => '12',
                'hm' => '21',
                'diketahui' => 'Sumardi',
                'diterima' => 'Mawardi',
                'diserahkan' => 'Slamet',
                'created_at' => '2017-10-02 00:00:00',
                'updated_at' => '2017-10-02 13:10:05',
            ),
        ));

        \DB::table('issue_item')->delete();
        
        \DB::table('issue_item')->insert(array (
            0 => 
            array (
                'id' => 1,
                'issue_id' => 1,
                'part_id' => 1,
                'name' => 'Part Item',
                'qty' => '3',
                'keterangan' => 'Lorem Ipsum',
                'created_at' => '2017-10-02 13:10:05',
                'updated_at' => '2017-10-02 13:10:05',
            ),
            1 => 
            array (
                'id' => 2,
                'issue_id' => 1,
                'part_id' => 2,
                'name' => 'Part',
                'qty' => '4',
                'keterangan' => 'Lorem Ispum',
                'created_at' => '2017-10-02 13:10:05',
                'updated_at' => '2017-10-02 13:10:05',
            ),
        ));

        \DB::table('returns')->delete();
        
        \DB::table('returns')->insert(array (
            0 => 
            array (
                'id' => 1,
                'unit_id' => 94,
                'operator_id' => 3,
                'no' => '20170001',
                'lokasi' => 'wangandowo',
                'sn' => '12',
                'hm' => '21',
                'diketahui' => 'Sumardi',
                'diterima' => 'Mawardi',
                'dikembalikan' => 'Slamet',
                'created_at' => '2017-10-02 00:00:00',
                'updated_at' => '2017-10-02 13:12:56',
            ),
        ));

        \DB::table('return_item')->delete();
        
        \DB::table('return_item')->insert(array (
            0 => 
            array (
                'id' => 1,
                'return_id' => 1,
                'part_id' => 1,
                'name' => 'Part',
                'qty' => '2',
                'keterangan' => 'Lorem Ipsum',
                'created_at' => '2017-10-02 13:12:56',
                'updated_at' => '2017-10-02 13:12:56',
            ),
            1 => 
            array (
                'id' => 2,
                'return_id' => 1,
                'part_id' => 2,
                'name' => 'Part Item',
                'qty' => '2',
                'keterangan' => 'Lorem Ipsum',
                'created_at' => '2017-10-02 13:12:56',
                'updated_at' => '2017-10-02 13:12:56',
            ),
        ));

        \DB::table('locations')->delete();
        
        \DB::table('locations')->insert(array (
            0 => 
            array (
                'id' => 1,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Akses Road quary',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            1 => 
            array (
                'id' => 2,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Ambokembang',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            2 => 
            array (
                'id' => 3,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Arrayan',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            3 => 
            array (
                'id' => 4,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Bojong',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            4 => 
            array (
                'id' => 5,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Bulak Pelem',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            5 => 
            array (
                'id' => 6,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Karangsari',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            6 => 
            array (
                'id' => 7,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Purwodadi',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            7 => 
            array (
                'id' => 8,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Sijeruk',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            8 => 
            array (
                'id' => 9,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Cibiyuk',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 0,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            9 => 
            array (
                'id' => 10,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Comal',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 0,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            10 => 
            array (
                'id' => 11,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Kajen',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 0,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            11 => 
            array (
                'id' => 12,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Bodeh',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 0,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            12 => 
            array (
                'id' => 13,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Kali Winong',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 0,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            13 => 
            array (
                'id' => 14,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Kelang Depok',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '2017-06-01 02:46:55',
            ),
            14 => 
            array (
                'id' => 15,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Klunjukan',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 0,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            15 => 
            array (
                'id' => 16,
                'code' => '',
                'location_type' => 'galian',
                'name' => 'Wangandowo',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            16 => 
            array (
                'id' => 17,
                'code' => '',
                'location_type' => 'galian',
                'name' => 'Sampih 1',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            17 => 
            array (
                'id' => 18,
                'code' => '',
                'location_type' => 'galian',
                'name' => 'Sampih 2',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            18 => 
            array (
                'id' => 19,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Babalan',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '2017-06-02 03:09:31',
                'updated_at' => '2017-06-02 03:09:31',
            ),
            19 => 
            array (
                'id' => 20,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Sitemu',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 0,
                'DT71' => 1,
                'created_at' => '2017-05-30 10:16:32',
                'updated_at' => '2017-05-30 10:16:32',
            ),
            20 => 
            array (
                'id' => 21,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Jarakah',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 0,
                'DT71' => 1,
                'created_at' => '2017-05-30 10:16:55',
                'updated_at' => '2017-05-30 10:16:55',
            ),
            21 => 
            array (
                'id' => 22,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Ampel Gading',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 0,
                'DT71' => 1,
                'created_at' => '2017-05-31 05:15:12',
                'updated_at' => '2017-05-31 05:15:12',
            ),
            22 => 
            array (
                'id' => 23,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Jajar Wayang',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 0,
                'DT71' => 1,
                'created_at' => '2017-06-01 06:33:25',
                'updated_at' => '2017-06-01 06:33:25',
            ),
            23 => 
            array (
                'id' => 24,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Rengas',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 0,
                'created_at' => '2017-06-05 07:57:51',
                'updated_at' => '2017-06-05 07:57:51',
            ),
            24 => 
            array (
                'id' => 25,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Pendowo',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 0,
                'DT71' => 1,
                'created_at' => '2017-07-03 03:23:06',
                'updated_at' => '2017-07-03 03:23:06',
            ),
            25 => 
            array (
                'id' => 26,
                'code' => '',
                'location_type' => 'timbunan',
                'name' => 'Petanjungan',
                'mulai' => '',
                'akhir' => '',
                'DT26' => 1,
                'DT71' => 1,
                'created_at' => '2017-08-31 08:25:25',
                'updated_at' => '2017-08-31 08:25:25',
            ),
        ));

    }
}
