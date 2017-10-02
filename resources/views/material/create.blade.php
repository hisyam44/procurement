@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/material') }}">
                    {{ csrf_field() }}
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">P.O. No.</label>
                                    <div class="col-md-6">
                                        <input id="order_text" type="text" class="form-control" required>
                                        <input id="order_id" type="text" name="order_id" required hidden>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Supplier</label>
                                    <div class="col-md-6">
                                        <input id="supplier" type="text" class="form-control" required readonly>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                        $("#order_text").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/order/completion') }}",
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
                                                $("#order_id").val(ui.item.id);
                                                $("#supplier").val(ui.item.supplier);
                                                var url = "{{ url('material/create?po=') }}";
                                                window.location.href = url+ui.item.id;
                                            }
                                        });
                                    </script>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Unit Code</label>
                                    <div class="col-md-6">
                                        <input id="unit_text" type="text" class="form-control" readonly required>
                                        <input id="unit_id" type="text" name="unit_id" required hidden>
                                    </div>
                                </div>
                                
                                        <input id="deliveryman" type="text" name="deliveryman" hidden required>
                                    
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Location</label>
                                    <div class="col-md-6">
                                        <input id="lokasi" value="Logistik" type="text" class="form-control" name="lokasi" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Date Receipt</label>
                                    <div class="col-md-6">
                                        <input id="created_at" type="text" class="form-control" name="created_at" required>
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#created_at').datetimepicker({
                                                format: 'YYYY-MM-DD',
                                                defaultDate: new Date
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
                        <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-2">
                                    <input type="text" onfocus="autoComplete(this)" class="form-control" placeholder="Part No.." readonly>
                                    <input id="" type="text" class="item_code" placeholder="Item Code.." name="partno_id[]" hidden required>
                                </div>
                                <div class="col-md-3">
                                    <input id="part_name" type="text" class="form-control" placeholder="Part Name.." name="part_name[]" required>
                                </div>
                                <div class="col-md-1">
                                    <input id="qty" type="text" class="form-control" placeholder="QTY.." name="qty[]" required>
                                </div>
                                <div class="col-md-1">
                                    <input id="btl" type="text" class="form-control" placeholder="BTL.." required readonly>
                                </div>
                                <div class="col-md-1">
                                    <input id="net" type="text" class="form-control" placeholder="NET.." name="net[]" required>
                                </div>
                                <div class="col-md-3">
                                    <input id="description[]" type="text" class="form-control description" placeholder="Description.." name="description[]" required>
                                </div>
                                <div class="col-md-1">
                                   
                                </div>
                            </div>
                        </div>
                        </div>
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
                                        $(parentElem).find('#part_name').val(ui.item.component);
                                    }
                                });
                            }
                        </script>
                        <div class="panel-body">
                            <a class="btn btn-success pull-right" onclick="appendNewFormItem()">Add New Item</a>
                        </div>
                        <script type="text/javascript">
                            function appendNewFormItem(){
                                var formRequest = $('#formItem');
                                $('<div class="panel panel-default"> <div class="panel-body"> <div class="form-group"> <div class="col-md-2"> <input type="text" onfocus="autoComplete(this)" class="form-control" placeholder="Part No.."> <input id="" type="text" class="item_code" placeholder="Item Code.." name="partno_id[]" hidden required> </div><div class="col-md-3"> <input id="part_name" type="text" class="form-control" placeholder="Part Name.." name="part_name[]" required> </div><div class="col-md-1"> <input id="qty" type="text" class="form-control" placeholder="QTY.." name="qty[]" required> </div><div class="col-md-1"> <input id="btl" type="text" class="form-control" placeholder="BTL.." required readonly> </div><div class="col-md-1"> <input id="net" type="text" class="form-control" placeholder="NET.." name="net[]" required> </div><div class="col-md-3"> <input id="description[]" type="text" class="form-control description" placeholder="Description.." name="description[]" required> </div><div class="col-md-1"> <a class="btn btn-danger" onclick="deleteItem(this)">Delete</a> </div></div></div></div>').appendTo(formRequest);
                                changeValue();
                            }
                        </script>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Acknowledged By</label>
                                    <div class="col-md-6">
                                        <input id="diketahui" type="text" class="form-control" name="diketahui" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Accepted By</label>
                                    <div class="col-md-6">
                                        <input id="diterima" type="text" class="form-control" name="diterima" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-right">
                        <i class="fa fa-btn fa-user"></i> POST
                    </button>
                </form>
            </div>
    </div>
</div>
@endsection
