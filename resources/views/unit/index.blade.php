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
            <div class="col-md-9">
                
            {{ $units->render() }}
            </div>
            <div class="col-md-3">
                <a class="btn btn-success btn-block" href="{{ url('unit/create') }}">New Equipment</a>
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
                                <td>Code</td>
                                <td>Tipe</td>
                                <td>Date @Site</td>
                                <td>Make</td>
                                <td>Model</td>
                                <td>Registration No</td>
                                <td>GPS</td>
                                <td>STNK Expired</td>
                                <td>Power</td>
                                <td>Capacity</td>
                                <td>YOM</td>
                                <td>Remarks</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($units as $index => $unit)
                            <tr>
                                <td>{{ $unit->code }}</td>
                                <td>{{ $unit->type }}</td>
                                <td>{{ $unit->date_commissioning }}</td>
                                <td>{{ $unit->make }}</td>
                                <td>{{ $unit->model }}</td>
                                <td>{{ $unit->no_registration }}</td>
                                <td>{{ $unit->gps }}</td>
                                <td>{{ $unit->stnk_ex }}</td>
                                <td>{{ $unit->power_rating }}</td>
                                <td>{{ $unit->capacity }}</td>
                                <td>{{ $unit->yom }}</td>
                                <td>{{ $unit->remarks }}</td>
                                <td>
                                    <form method="post" action="{{ url('unit/'.$unit->id) }}">
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
