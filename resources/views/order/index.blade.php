@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            @if(Session::has('message'))
                <div class="alert alert-success">
                  <strong>Success!</strong> {{ Session::get('message') }}
                </div>
            @endif
        </div>
    </div>
    <div class="row">
        <div class="panel-body"> 
            <div class="col-md-9">&nbsp;</div>
            <div class="col-md-3">
                <a class="btn btn-success btn-block" href="{{ url('order/create') }}">New Purchase Order</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <td>No. PO</td>
                                <td>Tipe</td>
                                <td>Reference No</td>
                                <td>Supplier</td>
                                <td>Dispatch To</td>
                                <td>Payment Term</td>
                                <td>Incoterms</td>
                                <td>Delivery Date</td>
                                <td>Total</td>
                                <td colspan="3">Aksi</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($orders as $index => $order)
                            <tr>
                                <td>{{ $order->no.sprintf('%03d',$order->id) }}</td>
                                <td>{{ strtoupper($order->type) }}</td>
                                <td>{{ $order->reference_no }}</td>
                                <td>{{ $order->supplier->name }}</td>
                                <td>{{ $order->dispatch_to }}</td>
                                <td>{{ $order->payment_term }}</td>
                                <td>{{ $order->incoterms }}</td>
                                <td>{{ $order->delivery_date }}</td>
                                <td>Rp.{{ $order->total }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('order/'.$order->id) }}"><span class="glyphicon glyphicon-search"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-success" href="{{ url('order/'.$order->id) }}?print=1"><span class="glyphicon glyphicon-print"></span></a>
                                </td>
                                <td>
                                    <form method="post" action="{{ url('order/'.$order->id) }}">
                                        {{ csrf_field() }}
                                        <input type="text" name="_method" value="delete" hidden>
                                        <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
