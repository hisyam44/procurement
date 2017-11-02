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
            <div class="col-md-6">
                <div class="panel-body">
                <form class="form form-inline" action="{{ url('/importExcel') }}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <input class="form-control" type="file" name="import_file" required></input>
                    <button class="btn btn-success" type="submit">Import From Excel</button>
                </form>
                </div>
            </div>
            <div class="col-md-2">
                <a class="btn btn-default btn-block" href="" data-toggle="modal" data-target="#myModal">Stock Report</a>
            </div>
            <div class="col-md-2">
                <a class="btn btn-info btn-block" href="{{ url('/itemcode') }}">Item Code List</a>
            </div>
            <div class="col-md-2">
                <a class="btn btn-success btn-block" href="{{ url('item/create') }}">New Item Master</a>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Stock Report {{ \Carbon\Carbon::now()->format('d-m-Y') }}</h4>
                </div>
                <div class="modal-body">
                    <a class="btn btn-info btn-block" href="{{ url('item/stock') }}">Show Preview</a>
                    <a class="btn btn-success btn-block" href="{{ url('item/stock?print=1') }}">Download in Excel</a>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal">Dissmiss</button>
                </div>
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
                                <td>Component</td>
                                <td>Weight</td>
                                <td>Dimension</td>
                                <td>UOM</td>
                                <td>Shelf Life</td>
                                <td>Warranty</td>
                                <td>Remark</td>
                                <td>Description</td>
                                <td colspan="2">Actions</td>
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
                                <td>{{ $item->component }}</td>
                                <td>{{ $item->weight }}</td>
                                <td>{{ $item->dimension }}</td>
                                <td>{{ $item->uom }}</td>
                                <td>{{ $item->shelf_life }}</td>
                                <td>{{ $item->warranty }}</td>
                                <td>{{ $item->remark }}</td>
                                <td>{{ $item->description }}</td>
                                <td><a class="btn btn-success" href="{{ url('item/'.$item->id.'/edit') }}">Edit</a></td>
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
