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
    </div>
</div>
@endsection
