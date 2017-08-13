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
            $transaksi->type = 'kas';
            $transaksi->category_accounting = "";
            $transaksi->category_construction = "";
            $transaksi->project_name = "Project PBTR Pekalongan";
            $transaksi->project_code = "20-16-PB001";
            $transaksi->receiver = "";
            $transaksi->receiver_rekening = "";
            $transaksi->amount_total = "3000000";
            $transaksi->direksi = "";
            $transaksi->kepala_bagian = "";
            $transaksi->kasir = "";
            $transaksi->penerima = "";
            $transaksi->keterangan = "";
            $transaksi->created_at = Carbon\Carbon::now();
            $transaksi->save();

            $cost = new Cost();
            $cost->type = 'debet';
            $cost->code = "";
            $cost->cost_type = "";
            $cost->description = "Saldo Awal";
            $cost->amount = "3000000";
            $cost->saldo = "3000000";
            $transaksi->costs()->save($cost);

    }
}
