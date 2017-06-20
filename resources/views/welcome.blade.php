@extends('layouts.app')

@section('content')
<div class="container">
    <div class="jumbotron">
        <h1 class="display-3">Selamat Datang !</h1>
        <p class="lead">Pilih salah satu Aplikasi dibawah ini.</p>
        <p class="lead">
            <a class="btn btn-primary" href="{{ url('item') }}">PROCUREMENT & WAREHOUSE</a>
            <a class="btn btn-success" href="{{ url('transaksi') }}">FINANCE</a>
        </p>
    </div>
</div>
@endsection
