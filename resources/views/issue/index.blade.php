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
                <a class="btn btn-success btn-block" href="{{ url('issue/create') }}">New Store Issue</a>
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
                                <td>Lokasi</td>
                                <td>S/N</td>
                                <td>H/M</td>
                                <td>Tanggal</td>
                                <td>Diketahui</td>
                                <td>Diterima</td>
                                <td>Diserahkan</td>
                                <td colspan="3">Aksi</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($issues as $index => $issue)
                            <tr>
                                <td>{{ $issue->no }}</td>
                                <td>{{ $issue->unit->code }}</td>
                                <td>{{ $issue->lokasi }}</td>
                                <td>{{ $issue->sn }}</td>
                                <td>{{ $issue->hm }}</td>
                                <td>{{ $issue->created_at }}</td>
                                <td>{{ $issue->diketahui }}</td>
                                <td>{{ $issue->diterima }}</td>
                                <td>{{ $issue->diserahkan }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('issue/'.$issue->id) }}"><span class="glyphicon glyphicon-search"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-success" href="{{ url('issue/'.$issue->id) }}?print=1"><span class="glyphicon glyphicon-print"></span></a>
                                </td>
                                <td>
                                    <form method="post" action="{{ url('issue/'.$issue->id) }}">
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
            {{ $issues->render() }}
        </div>
    </div>
</div>
@endsection
