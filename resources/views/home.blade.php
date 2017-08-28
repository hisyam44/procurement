@extends('layouts.app')

@section('content')
<div class="container">
    <div class="jumbotron">
        <h1 class="display-3">Finance.</h1>
        <p class="lead">
            <a class="btn btn-primary" href="{{ url('transaksi/cash') }}">CASH</a>
            <a class="btn btn-success" href="{{ url('transaksi/bank') }}">BANK</a>
        </p>
    </div>
</div>
@endsection
