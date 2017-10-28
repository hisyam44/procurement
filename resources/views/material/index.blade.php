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

                                <td>Date Receipt</td>
                                <td>Acknowledged By</td>
                                <td>Accepted By</td>
                                <td colspan="5">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($materials as $index => $material)
                            <tr>
                                <td>{{ $material->order->purchase->no }}</td>
                                <td>{{ $material->order->no }}</td>
                                <td>{{ isset($material->unit->code)?$material->unit->code:'-' }}</td>
                                <td>{{ $material->lokasi }}</td>
                                <td>{{ $material->order->supplier->name }}</td>

                                <td>{{ $material->created_at->format('d-m-Y') }}</td>
                                <td>{{ $material->diketahui }}</td>
                                <td>{{ $material->diterima }}</td>
                                <td>
                                    <a class="btn btn-default" href="" data-toggle="modal" data-target="#myModal{{ $index }}"><span class="glyphicon glyphicon-file"></span></a>
                                </td>
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
                                <div class="modal fade" id="myModal{{ $index }}" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Approval Progress</h4>
                                            </div>
                                            <div class="modal-body">
                                                <dl class="dl-horizontal">
                                                  <dt>Prepared By (Operator)</dt>
                                                  <dd>{{ $material->operator->name.', '.$material->operator->department.' Department' }}</dd>
                                                </dl>
                                                <dl class="dl-horizontal">
                                                  <dt>Acknowledged By (HoD)</dt>
                                                  <dd>{{ $material->hod?$material->hod->name.", Head of Department ".$material->hod->department:"Doesn't Approved yet" }}</dd>
                                                </dl>
                                                <dl class="dl-horizontal">
                                                  <dt>Approved By (Admin)</dt>
                                                  <dd>{{ $material->admin?$material->admin->name:"Doesn't Approved yet" }}</dd>
                                                </dl>
                                                <a class="btn btn-success btn-block" href="{{ url('material/'.$material->id.'/approve') }}">Approve as {{ \Auth::user()->name }}</a>
                                            </div>
                                            <!-- <div class="modal-footer">
                                                <button class="btn" data-dismiss="modal">Dissmiss</button>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
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
