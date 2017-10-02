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
                                <td colspan="4">Actions</td>
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
