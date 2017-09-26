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
                <a class="btn btn-success btn-block" href="{{ url('supplier/create') }}">New Supplier</a>
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
                                <td>Supplier ID</td>
                                <td>Supplier Name</td>
                                <td>Type</td>
                                <td>Address</td>
                                <td>Contact Name</td>
                                <td>Email</td>
                                <td>Phone</td>
                                <td>Description</td>
                                <td colspan="2">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($suppliers as $index => $supplier)
                            <tr>
                                <td>{{ $supplier->no }}</td>
                                <td>{{ $supplier->name }}</td>
                                <td>{{ $supplier->type }}</td>
                                <td>{{ $supplier->address }}</td>
                                <td>{{ $supplier->attn }}</td>
                                <td>{{ $supplier->email }}</td>
                                <td>{{ $supplier->phone }}</td>
                                <td>{{ $supplier->description }}</td>
                                <td><a class="btn btn-success" href="{{ url('supplier/'.$supplier->id.'/edit') }}">Edit</a></td>
                                <td>
                                    <form method="post" action="{{ url('supplier/'.$supplier->id) }}">
                                        {{ csrf_field() }}
                                        <input type="text" name="_method" value="delete" hidden>
                                        <input type="submit" class="btn btn-danger" value="Delete">
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
