@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/return/'.$return->id) }}">
                    {{ csrf_field() }}
                    <input type="text" name="_method" value="put" hidden>
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">No</label>
                                    <div class="col-md-6">
                                        <input id="no" type="text" class="form-control" name="no" value="{{ $return->no }}" readonly required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Unit Code</label>
                                    <div class="col-md-6">
                                        <input id="unit_text" type="text" class="form-control" value="{{ $return->unit->code }}" required>
                                        <input id="unit_id" type="text" name="unit_id" value="{{ $return->unit_id }}" required hidden>
                                    </div>
                                    <script type="text/javascript">
                                        $("#unit_text").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/unit/completion') }}",
                                                    dataType: "json",
                                                    data: {
                                                        term: request.term
                                                    },
                                                    success: function(data){
                                                        console.log(data);
                                                        response(data);
                                                    }
                                                });
                                            },
                                            minLength: 2,
                                            select: function(event,ui){
                                                $("#unit_id").val(ui.item.id);
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">S/N</label>
                                    <div class="col-md-6">
                                        <input id="sn" name="sn" value="{{ $return->sn }}" type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">H/M</label>
                                    <div class="col-md-6">
                                        <input id="hm" name="hm" value="{{ $return->hm }}" type="text" class="form-control" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Location</label>
                                    <div class="col-md-6">
                                        <input id="lokasi" type="text" value="{{ $return->lokasi }}" class="form-control" name="lokasi" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Date</label>
                                    <div class="col-md-6">
                                        <input id="created_at" type="text" class="form-control" value="{{ $return->created_at }}" name="created_at" required>
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#created_at').datetimepicker({
                                                format: 'YYYY-MM-DD'
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <div id="formItem">
                        @foreach($return->items as $item)
                        <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <input type="text" onfocus="autoComplete(this)" class="form-control" value="{{ $item->part->code }}" placeholder="Part No..">
                                    <input id="" type="text" class="item_code" placeholder="Item Code.." name="part_id[]" value="{{ $item->part_id }}" hidden required>
                                </div>
                                <div class="col-md-3">
                                    <input id="part_name" type="text" class="form-control" placeholder="Item Name.." value="{{ $item->name }}" name="name[]" required>
                                </div>
                                <div class="col-md-1">
                                    <input id="qty" type="text" class="form-control" value="{{ $item->qty }}" placeholder="QTY.." name="qty[]" required>
                                </div>
                                <div class="col-md-1">
                                    <input id="btl" type="text" class="form-control" placeholder="UOM.." value="{{ $item->part->item->uom }}" required readonly>
                                </div>
                                <div class="col-md-4">
                                    <input id="keterangan[]" type="text" class="form-control description" value="{{ $item->keterangan }}" placeholder="Description.." name="keterangan[]" required>
                                </div>
                                <div class="col-md-1">

                                </div>
                            </div>
                        </div>
                        </div>
                        @endforeach
                        </div>
                        <script type="text/javascript">
                            function deleteItem(elem){
                                var panel = $(elem).parent().parent().parent().parent();
                                console.log(panel);
                                panel.remove();
                            }
                            function autoComplete(elem){
                                $(elem).autocomplete({
                                    source: function(request,response){
                                        console.log(request.term);
                                        $.ajax({
                                            url: "{{ url('/item/completion') }}",
                                            dataType: "json",
                                            data: {
                                                term: request.term
                                            },
                                            success: function(data){
                                                console.log(data);
                                                response(data);
                                            }
                                        });
                                    },
                                    minLength: 2,
                                    select: function(event,ui){
                                        $(this).next().val(ui.item.id);
                                        var parentElem = $(this).parent().parent().parent().parent();
                                        $(parentElem).find('#btl').val(ui.item.uom);
                                    }
                                });
                            }
                        </script>
                        <!-- <div class="panel-body">
                            <a class="btn btn-success pull-right" onclick="appendNewFormItem()">Add New Item</a>
                        </div> -->
                        <script type="text/javascript">
                            function appendNewFormItem(){
                                var formRequest = $('#formItem');
                                $('<div class="panel panel-default"> <div class="panel-body"> <div class="form-group"> <div class="col-md-2"> <input type="text" onfocus="autoComplete(this)" class="form-control" placeholder="Part No.."> <input id="" type="text" class="item_code" placeholder="Item Code.." name="part_id[]" hidden required> </div> <div class="col-md-3"> <input id="part_name" type="text" class="form-control" placeholder="Item Name.." name="name[]" required> </div> <div class="col-md-1"> <input id="qty" type="text" class="form-control" placeholder="QTY.." name="qty[]" required> </div> <div class="col-md-1"> <input id="btl" type="text" class="form-control" placeholder="UOM.." required readonly> </div> <div class="col-md-4"> <input id="keterangan[]" type="text" class="form-control description" placeholder="Description.." name="keterangan[]" required> </div><div class="col-md-1"> <a class="btn btn-danger" onclick="deleteItem(this)">Delete</a> </div> </div> </div> </div>').appendTo(formRequest); changeValue(); }
                        </script>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Acknowledged By</label>
                                    <div class="col-md-6">
                                        <input id="diketahui" type="text" class="form-control" value="{{ $return->diketahui }}" name="diketahui" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Accepted By</label>
                                    <div class="col-md-6">
                                        <input id="diterima" type="text" class="form-control" value="{{ $return->diterima }}" name="diterima" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Returned By</label>
                                    <div class="col-md-6">
                                        <input id="diserahkan" type="text" class="form-control" value="{{ $return->dikembalikan }}" name="dikembalikan" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-right">
                        <i class="fa fa-btn fa-user"></i> Edit
                    </button>
                </form>
            </div>
    </div>
</div>
@endsection
