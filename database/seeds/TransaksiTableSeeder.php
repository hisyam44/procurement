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
        $transaksi = new Transaksi();
        $transaksi->type = "kas";
        $transaksi->project_name = "Project Name";
        $transaksi->project_code = "PC124";
        $transaksi->receiver = "Ahmad";
        $transaksi->receiver_rekening = "56752652825642";
        $transaksi->amount_total = "1200000";
        $transaksi->direksi = "Bejo";
        $transaksi->kepala_bagian = "Slamet";
        $transaksi->kasir = "Siti";
        $transaksi->penerima = "Ahmad";
        $transaksi->save();

        $cost = new Cost();
        $cost->type = "debet";
        $cost->code = "GH5678";
        $cost->rekening_code = "6651776";
        $cost->description = "Lorem Ipsum Sit Dolor 1";
        $cost->amount = "700000";
        $transaksi->costs()->save($cost);

        $cost = new Cost();
        $cost->type = "debet";
        $cost->code = "SE5678";
        $cost->rekening_code = "6651776";
        $cost->description = "Lorem Ipsum Sit Dolor 2";
        $cost->amount = "500000";
        $transaksi->costs()->save($cost);

    }
}
