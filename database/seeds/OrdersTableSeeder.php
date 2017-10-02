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

    }
}
