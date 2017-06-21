<?php

use Illuminate\Database\Seeder;
use App\Transaksi;
use App\Cost;

class TransaksiTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0;$i<100;$i++){
            $transaksi = new Transaksi();
            $type = ['kas','bank'];
            $transaksi->type = $type[rand(0,1)];
            $transaksi->project_name = "Project Name";
            $transaksi->project_code = "PC124";
            $transaksi->receiver = "Ahmad";
            $transaksi->receiver_rekening = "56752652825642";
            $transaksi->amount_total = "1200000";
            $transaksi->direksi = "Bejo";
            $transaksi->kepala_bagian = "Slamet";
            $transaksi->kasir = "Siti";
            $transaksi->penerima = "Ahmad";
            $nn = rand(1,Carbon\Carbon::now()->day);
            $transaksi->created_at = Carbon\Carbon::create(2017, 6, $nn, 0, 0, 0);
            $transaksi->save();

            $type_cost = ['debet','credit'];
            $cost_type = $type_cost[rand(0,1)];
            $code = 'HL'.rand(1111,9999);
            $rek_code = rand(1111111,9999999);
            $cost = new Cost();
            $cost->type = $cost_type;
            $cost->code = $code;
            $cost->rekening_code = $rek_code;
            $cost->description = "Lorem Ipsum Sit Dolor 1";
            $cost->amount = "700000";
            $transaksi->costs()->save($cost);

            $cost = new Cost();
            $cost->type = $cost_type;
            $cost->code = $code;
            $cost->rekening_code = $rek_code;
            $cost->description = "Lorem Ipsum Sit Dolor 2";
            $cost->amount = "500000";
            $transaksi->costs()->save($cost);
        }

    }
}
