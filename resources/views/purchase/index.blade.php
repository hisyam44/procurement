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
                <a class="btn btn-success btn-block" href="{{ url('purchase/create') }}">New Purchase Request</a>
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
                                <td>No. PR</td>
                                <td>Unit Code</td>
                                <td>Type</td>
                                <td>MOL</td>
                                <td>KM/HM</td>
                                <td>Warehouse in Charge</td>
                                <td>Maintenance Manager</td>
                                <td>Project Manager</td>
                                <td>Purpose</td>
                                <td>Date</td>
                                <td colspan="3">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($purchases as $index => $purchase)
                            <tr>
                                <td>{{ $purchase->no }}</td>
                                <td>{{ $purchase->unit->code }}</td>
                                <td>{{ $purchase->type }}</td>
                                <td>{{ $purchase->mol }}</td>
                                <td>{{ $purchase->km_hm }}</td>
                                <td>{{ $purchase->warehouse_manager }}</td>
                                <td>{{ $purchase->maintenance_manager }}</td>
                                <td>{{ $purchase->project_manager }}</td>
                                <td>{{ $purchase->purpose }}</td>
                                <td>{{ $purchase->created_at->format('d-m-Y') }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('purchase/'.$purchase->id) }}"><span class="glyphicon glyphicon-search"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-success" href="{{ url('purchase/'.$purchase->id) }}?print=1"><span class="glyphicon glyphicon-print"></span></a>
                                </td>
                                <td>
                                    <form method="post" action="{{ url('purchase/'.$purchase->id) }}">
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
