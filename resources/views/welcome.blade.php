@extends('layouts.app')

@section('content')
<div class="container">
    <div class="jumbotron">
        <p class="lead">Welcome, {{ Auth::user()->name }} !</p>
        <p class="lead">
            <a class="btn btn-primary" href="{{ url('purchase') }}">PROCUREMENT & WAREHOUSE</a>
            <a class="btn btn-success" href="{{ url('transaksi') }}">FINANCE</a>
            <a class="btn btn-default" href="{{ url('user') }}">USER MANAGEMENT</a>
        </p>
    </div>
</div>
@endsection
