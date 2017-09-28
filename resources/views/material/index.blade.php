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
                <a class="btn btn-success btn-block" href="{{ url('material/create') }}">New Material Receipt</a>
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
                                <td>No. PO</td>
                                <td>Unit Code</td>
                                <td>Location</td>
                                <td>Supplier</td>
                                <td>Delivered By</td>
                                <td>Date</td>
                                <td>Acknowledged By</td>
                                <td>Accepted By</td>
                                <td colspan="4">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($materials as $index => $material)
                            <tr>
                                <td>{{ $material->order->purchase->no }}</td>
                                <td>{{ $material->order->no }}</td>
                                <td>{{ $material->unit->code }}</td>
                                <td>{{ $material->lokasi }}</td>
                                <td>{{ $material->order->supplier->name }}</td>
                                <td>{{ $material->deliveryman }}</td>
                                <td>{{ $material->created_at->format('d-m-Y') }}</td>
                                <td>{{ $material->diketahui }}</td>
                                <td>{{ $material->diterima }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('material/'.$material->id) }}"><span class="glyphicon glyphicon-search"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-default" href="{{ url('material/'.$material->id) }}?print=1"><span class="glyphicon glyphicon-print"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-success" href="{{ url('material/'.$material->id.'/edit') }}"><span class="glyphicon glyphicon-edit"></span></a>
                                </td>
                                <td>
                                    <form method="post" action="{{ url('material/'.$material->id) }}">
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
            {{ $materials->render() }}
        </div>
    </div>
</div>
@endsection
