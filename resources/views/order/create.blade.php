@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/order') }}">
                    {{ csrf_field() }}
                    <input type="text" name="no" value="{{ $no_voucher }}" hidden>
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
                    <script type="text/javascript">
                        function changeValue(){
                            var qty = $('.qty');
                            var unit_price = $('.unit_price');
                            var line_total = $('.line_total');
                            var sub_total = parseInt($('#sub_total').val());
                            var tax = parseInt($('#tax').val());
                            var total = parseInt($('#total').val());

                            sub_total = 0;
                            console.log(qty);
                            for(var i=0;i<qty.length;i++){
                                var qty_temp = parseInt($(qty[i]).val());
                                var unit_price_temp = parseInt($(unit_price[i]).val());
                                var line_total_temp = $(line_total[i]);
                                var total_temp = qty_temp*unit_price_temp;
                                line_total_temp.val(total_temp);
                                sub_total += total_temp;
                            }

                            total = sub_total-tax;
                            $('#sub_total').val(sub_total);
                            $('#total').val(total);
                        }
                    </script>
                    <div class="row">
                        <div id="formItem">
                        <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-1">
                                    <input id="qty" type="text" class="form-control qty" placeholder="qty.." onkeyup="changeValue()" name="qty[]" value="1" required>
                                </div>
                                <div class="col-md-2">
                                    <input type="text" onfocus="autoComplete(this)" class="form-control" placeholder="Part No..">
                                    <input id="" type="text" class="item_code" placeholder="Item Code.." name="item_code[]" hidden required>
                                </div>
                                <div class="col-md-2">
                                    <input id="item_code" type="text" class="form-control" placeholder="Item Code.." required readonly>
                                </div>
                                <div class="col-md-2">
                                    <input id="description[]" type="text" class="form-control description" placeholder="Description.." name="description[]" required>
                                </div>
                                <div class="col-md-2">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span>
                                    <input id="unit_price" type="text" class="form-control unit_price" onkeyup="changeValue()" placeholder="Unit Price.." value="0" name="unit_price[]" required>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span>  
                                    <input id="line_total" type="text" class="form-control line_total" placeholder="Line Total.." name="line_total[]" required readonly>
                                    </div>
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
                                        $(parentElem).find('#item_code').val(ui.item.item_code);
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
                                $('<div class="panel panel-default"> <div class="panel-body"> <div class="form-group"> <div class="col-md-1"> <input id="qty" type="text" class="form-control qty" placeholder="qty.." onkeyup="changeValue()" name="qty[]" value="1" required> </div><div class="col-md-2"> <input type="text" onfocus="autoComplete(this)" class="form-control" placeholder="Part No.."> <input type="text" class="item_code" placeholder="Part No.." name="item_code[]" hidden required> </div><div class="col-md-2"><input id="item_code" type="text" class="form-control" placeholder="Item Code.." required readonly></div><div class="col-md-2"> <input id="description[]" type="text" class="form-control description" placeholder="Description.." name="description[]" required> </div><div class="col-md-2"> <div class="input-group"> <span class="input-group-addon">Rp</span> <input id="unit_price" type="text" class="form-control unit_price" onkeyup="changeValue()" placeholder="Unit Price.." value="0" name="unit_price[]" required> </div></div><div class="col-md-2"> <div class="input-group"> <span class="input-group-addon">Rp</span> <input id="line_total" type="text" class="form-control line_total" placeholder="Line Total.." name="line_total[]" required readonly> </div></div><div class="col-md-1"> <a class="btn btn-danger" onclick="deleteItem(this)">Delete</a> </div></div></div></div>').appendTo(formRequest);
                                changeValue();
                            }
                        </script>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Warranty</label>
                                    <div class="col-md-6">
                                        <input id="warranty" type="text" class="form-control" name="warranty" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Authorized By</label>
                                    <div class="col-md-6">
                                        <input id="author" type="text" class="form-control" name="author" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Acknowledged By</label>
                                    <div class="col-md-6">
                                        <input id="diketahui" type="text" class="form-control" name="diketahui" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Sub Total</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="sub_total" type="text" class="form-control" name="sub_total" readonly required>
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Tax</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="tax" type="text" class="form-control" onkeyup="changeValue()" value="0" name="tax" required>
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Total</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="total" type="text" class="form-control" name="total" readonly required>
                                    </div>
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
