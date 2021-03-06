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
                <a class="btn btn-success btn-block" href="{{ url('return/create') }}">New Store Return</a>
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
                                <td>No</td>
                                <td>Unit Code</td>
                                <td>Location</td>
                                <td>S/N</td>
                                <td>H/M</td>
                                <td>Date</td>
                                <td>Acknowledged By</td>
                                <td>Accepted By</td>
                                <td>Returned By</td>
                                <td colspan="5">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($returns as $index => $return)
                            <tr>
                                <td>{{ $return->no }}</td>
                                <td>{{ $return->unit->code }}</td>
                                <td>{{ $return->lokasi }}</td>
                                <td>{{ $return->sn }}</td>
                                <td>{{ $return->hm }}</td>
                                <td>{{ $return->created_at }}</td>
                                <td>{{ $return->diketahui }}</td>
                                <td>{{ $return->diterima }}</td>
                                <td>{{ $return->dikembalikan }}</td>
                                <td>
                                    <a class="btn btn-default" href="" data-toggle="modal" data-target="#myModal{{ $index }}"><span class="glyphicon glyphicon-file"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('return/'.$return->id) }}"><span class="glyphicon glyphicon-search"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-default" href="{{ url('return/'.$return->id) }}?print=1"><span class="glyphicon glyphicon-print"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-success" href="{{ url('return/'.$return->id.'/edit') }}"><span class="glyphicon glyphicon-edit"></span></a>
                                </td>
                                <td>
                                    <form method="post" action="{{ url('return/'.$return->id) }}">
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
                                                  <dd>{{ $return->operator->name.', '.$return->operator->department.' Department' }}</dd>
                                                </dl>
                                                <dl class="dl-horizontal">
                                                  <dt>Acknowledged By (HoD)</dt>
                                                  <dd>{{ $return->hod?$return->hod->name.", Head of Department ".$return->hod->department:"Doesn't Approved yet" }}</dd>
                                                </dl>
                                                <dl class="dl-horizontal">
                                                  <dt>Approved By (Admin)</dt>
                                                  <dd>{{ $return->admin?$return->admin->name:"Doesn't Approved yet" }}</dd>
                                                </dl>
                                                <a class="btn btn-success btn-block" href="{{ url('return/'.$return->id.'/approve') }}">Approve as {{ \Auth::user()->name }}</a>
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
            {{ $returns->render() }}
        </div>
    </div>
</div>
@endsection
