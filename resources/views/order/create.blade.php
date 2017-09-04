@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/order') }}">
                    {{ csrf_field() }}
                    <div class="row">
                    <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Tipe</label>
                                    <div class="col-md-6">
                                        <select id="type" class="form-control" name="type">
                                            <option>HO</option>
                                            <option>Local</option>
                                        </select>
                                    </div>
                                </div>
<!--                                 <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">PO No.</label>
                                    <div class="col-md-6">
                                        <input id="no" type="text" class="form-control" name="no" required>
                                    </div>
                                </div> -->
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Supplier ID</label>
                                    <div class="col-md-6">
                                        <input id="supplier_id" type="text" name="supplier_id" hidden>
                                        <input id="supplier_code" type="text" class="form-control" required>
                                    </div>
                                    <script type="text/javascript">
                                        $("#supplier_code").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/supplier/completion') }}",
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
                                                $("#supplier_id").val(ui.item.id);
                                                $("#supplier_name").val(ui.item.name);
                                                $("#supplier_address").val(ui.item.address);
                                                $("#supplier_attn").val(ui.item.attn);
                                            }
                                        });
                                    </script>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">References No</label>
                                    <div class="col-md-6">
                                        <input id="reference_no" type="text" class="form-control" name="reference_no" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Date</label>
                                    <div class="col-md-6">
                                        <input id="created_at" type="text" class="form-control" name="created_at" required>
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
                        <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Supplier</label>
                                    <div class="col-md-6">
                                        <input id="supplier_name" type="text" class="form-control" required readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Alamat</label>
                                    <div class="col-md-6">
                                        <textarea id="supplier_address" class="form-control" rows="4" required readonly></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Atas Nama</label>
                                    <div class="col-md-6">
                                        <input id="supplier_attn" type="text" class="form-control" required readonly>
                                    </div>
                                </div>
                        </div>
                        <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Dispatch To</label>
                                    <div class="col-md-6">
                                        <input id="dispacth_to" type="text" class="form-control" name="dispacth_to" value="PT Sumber Mitra Jaya" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Alamat</label>
                                    <div class="col-md-6">
                                        <textarea id="dispacth_address" class="form-control" name="dispacth_address" rows="4" required>Gudang Base Camp Jl Raya Bojong Kajen Wangandowo, Jawa Tengah 51156</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Atas Nama</label>
                                    <div class="col-md-6">
                                        <input id="dispacth_name" type="text" class="form-control" name="dispacth_name" value="Mawardi" required>
                                    </div>
                                </div>
                        </div>
                    </div>
                    </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Payment Term</label>
                                    <div class="col-md-6">
                                        <input id="payment_term" type="text" class="form-control" name="payment_term" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Incoterms</label>
                                    <div class="col-md-6">
                                        <input id="incoterms" type="text" class="form-control" name="incoterms" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Delivery Date</label>
                                    <div class="col-md-6">
                                        <input id="delivery_date" type="text" class="form-control" name="delivery_date" required>
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#delivery_date').datetimepicker({
                                                format: 'YYYY-MM-DD'
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-1">
                                    <input id="payment_term" type="text" class="form-control" placeholder="qty.." name="payment_term" required>
                                </div>
                                <div class="col-md-2">
                                    <input id="payment_term" type="text" class="form-control" placeholder="Part No.." name="payment_term" required>
                                </div>
                                <div class="col-md-2">
                                    <input id="payment_term" type="text" class="form-control" placeholder="Item Code.." name="payment_term" required readonly>
                                </div>
                                <div class="col-md-3">
                                    <input id="payment_term" type="text" class="form-control" placeholder="Description.." name="payment_term" required>
                                </div>
                                <div class="col-md-2">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span>
                                    <input id="payment_term" type="text" class="form-control" placeholder="Unit Price.." name="payment_term" required>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span>  
                                    <input id="payment_term" type="text" class="form-control" placeholder="Line Total.." name="payment_term" required readonly>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Warranty</label>
                                    <div class="col-md-6">
                                        <input id="payment_term" type="text" class="form-control" name="payment_term" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Sub Total</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="payment_term" type="text" class="form-control" name="payment_term" readonly required>
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Tax</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="payment_term" type="text" class="form-control" name="payment_term" required>
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Total</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="payment_term" type="text" class="form-control" name="payment_term" readonly required>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div id="formRequest">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-3">
                                            <input id="no" type="text" class="form-control" placeholder="Part No..." onfocus="autoComplete(this)" required>
                                            <input id="item_id" type="text" name="item_id[]" required hidden>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="component" type="text" class="form-control" name="component[]" placeholder="Component..." readonly required>
                                        </div>
                                        <div class="col-md-6">
                                            <input id="description" type="text" class="form-control" name="description[]" placeholder="Part Description..." readonly required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-1">
                                            <input id="qty" type="number" class="form-control" name="qty[]" placeholder="QTY..." required>
                                        </div>
                                        <div class="col-md-2">
                                            <input id="satuan" type="text" class="form-control" placeholder="UOM..." readonly required>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="model" type="text" class="form-control model" name="model[]" placeholder="Model...">
                                        </div>
                                        <div class="col-md-6">
                                            <input id="damage_description" type="text" class="form-control" name="damage_description[]" placeholder="Remark..." required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <script type="text/javascript">
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
                                        $(parentElem).find('#satuan').val(ui.item.uom);
                                        $(parentElem).find('#component').val(ui.item.component);
                                        $(parentElem).find('#description').val(ui.item.description);
                                        console.log(parentElem);
                                    }
                                });
                            }
                        </script>
                        <div class="panel-body">
                            <a class="btn btn-success pull-right" onclick="appendNewFormRequest()">Add New Request</a>
                        </div>
                        <script type="text/javascript">
                            function deleteRequest(elem){
                                console.log($(elem).parent());
                                var panel = $(elem).parent().parent();
                                panel.remove();

                            }
                            function checkDepartment(val){
                                var val = $('#department').val();
                                if(val != "HR and GA"){
                                    $('.model').parent().show();
                                    //$('.device_code').parent().show();
                                }else{
                                    $('.model').parent().hide();    
                                    //$('.device_code').parent().hide();
                                }
                            }
                            checkDepartment();
                        </script>
                        <script type="text/javascript">
                            function appendNewFormRequest(){
                                var formRequest = $('#formRequest');
                                $('<div class="panel"> <div class="panel-body"> <div class="row"> <div class="form-group"> <div class="col-md-3"> <input id="no" type="text" class="form-control" placeholder="Part No..." onfocus="autoComplete(this)" required><input id="item_id" type="text" name="item_id[]" required hidden> </div><div class="col-md-3"> <input id="component" type="text" class="form-control" name="component[]" placeholder="Component..." readonly required> </div><div class="col-md-6"> <input id="description" type="text" class="form-control" name="description[]" placeholder="Part Description..." readonly required> </div></div></div><div class="row"> <div class="form-group"> <div class="col-md-1"> <input id="qty" type="number" class="form-control" name="qty[]" placeholder="QTY..." required> </div><div class="col-md-2"> <input id="satuan" type="text" class="form-control" placeholder="UOM..."  readonly required> </div><div class="col-md-3"> <input id="model" type="text" class="form-control model" name="model[]" placeholder="Model..."> </div><div class="col-md-6"> <input id="damage_description" type="text" class="form-control" name="damage_description[]" placeholder="Remark..." required> </div></div></div><a class="btn btn-danger pull-right" onclick="deleteRequest(this)">delete</a> </div></div>').appendTo(formRequest);
                                checkDepartment();

                            }
                        </script>
                    </div>
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Warehouse Manager</label>
                                <div class="col-md-6">
                                    <input id="warehouse_manager" type="text" class="form-control" name="warehouse_manager" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Maintenance Manager</label>
                                <div class="col-md-6">
                                    <input id="maintenance_manager" type="text" class="form-control" name="maintenance_manager" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Project Manager</label>
                                <div class="col-md-6">
                                    <input id="project_manager" type="text" class="form-control" name="project_manager" value="Pak Veera" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Purpose</label>
                                <div class="col-md-6">
                                    <textarea id="purpose" type="text" class="form-control" name="purpose" required></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
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
