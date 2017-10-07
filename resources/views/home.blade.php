@extends('layouts.app')

@section('content')
<div class="container">
    <div class="jumbotron">
        <h1 class="display-3">Finance.</h1>
        <p class="lead">
            <a class="btn btn-primary" href="{{ url('transaksi/cash') }}">CASH</a>
            <a class="btn btn-success" href="{{ url('transaksi/bank') }}">BANK</a>
            <a class="btn btn-info" href="{{ url('transaksi/iou') }}">IOU</a>
            <a class="btn btn-warning" href="{{ url('transaksi/ious') }}">IOU Settlement</a>
            <a class="btn btn-default" href="{{ url('transaksi/pettycash') }}">Petty Cash</a>
        </p>
        <p class="lead">
            Deskripsi :
            <ol>
                <li>Ada 4 kategori transaksi(cash, bank, iou, iou settlement).</li>
                <li>Setiap kategori memiliki data yang terpisah karena memiliki rincian yang berbeda-beda.</li>
                <li>Setiap transaksi memiliki accounting category - yang sudah disediakan(tdk bisa bebas).</li>
                <li>Daftar accounting category dapat dilihat dimenu category accounting.</li>
                <li>Setiap transaksi dapat terdiri dari lebih dari satu transaksi jika memiliki jenis(debet/kredit) yang sama.</li>
                <li>Setiap kategori memiliki laporan tersendiri yang terpisah.</li>
                <li>Untuk laporan cash dan bank, ditampilkan dalam 2 kolom(debet dan kredit).</li>
                <li>Untuk laporan iou, ditampilkan dengan menjumlahkan setiap iou.</li>
                <li>Untuk laporan iou settlement, ditampilkan dengan menjumlahkan setiap realisasi iou settlement.</li>
                <li>Setiap transaksi memiliki attachment(lampiran) berupa foto yang dapat diupload.</li>
                <li>Setiap transaksi dapat memiliki attachment lebih dari satu, yang dapat didownload dlm format pdf.</li>
            </ol>
        </p>
    </div>
</div>
@endsection
