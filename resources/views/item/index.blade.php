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
                <a class="btn btn-success btn-block" href="{{ url('item/create') }}">New Item Master</a>
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
                                <td>Item No</td>
                                <td>Part No</td>
                                <td>Weight</td>
                                <td>Dimension</td>
                                <td>UOM</td>
                                <td>Shelf Life</td>
                                <td>Warranty</td>
                                <td>Remark</td>
                                <td>Description</td>
                                <td>Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($items as $index => $item)
                            <tr>
                                <td>{{ $item->item_no }}</td>
                                <td>
                                    @foreach($item->part_no as $index => $part_no)
                                        {{ $part_no->code }}, 
                                    @endforeach
                                </td>
                                <td>{{ $item->weight }} Kilogram</td>
                                <td>{{ $item->dimension }} Meter</td>
                                <td>{{ $item->uom }}</td>
                                <td>{{ $item->shelf_life }}</td>
                                <td>{{ $item->warranty }}</td>
                                <td>{{ $item->remark }}</td>
                                <td>{{ $item->description }}</td>
                                <td>
                                    <form method="post" action="{{ url('item/'.$item->id) }}">
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
