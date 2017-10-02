@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/order/'.$order->id) }}">
                    {{ csrf_field() }}
                    <input type="text" name="_method" value="put" hidden>
                    <input type="text" name="no" value="{{ $order->no }}" hidden>
                    <div class="row">
                    <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">PR Number</label>
                                    <div class="col-md-6">
                                        <input type="text" name="purchase_id" value="{{ $order->purchase_id }}" hidden required>
                                        <input id="reference_no" type="text" class="form-control" name="reference_no" value="{{ $order->purchase->no }}" readonly required>
                                    </div>
                                    <script type="text/javascript">
                                        $("#reference_no").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/purchase/completion') }}",
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
                                                var url = "{{ url('order/create?pr=') }}";
                                                window.location.href = url+ui.item.id; 
                                            }
                                        });
                                    </script>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Type</label>
                                    <div class="col-md-6">
                                        <input class="form-control" name="type" value="{{ strtoupper($order->type) }}" readonly></input>
                                        <!-- <select id="type" class="form-control" name="type" readonly>
                                            <option>{{ strtoupper($order->type) }}</option>
                                            <option>HO</option>
                                            <option>Local</option>
                                        </select> -->
                                    </div>
                                </div>
<!--                                 <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">PO No.</label>
                                    <div class="col-md-6">
                                        <input id="no" type="text" class="form-control" name="no" required>
                                    </div>
                                </div> -->
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Supplier</label>
                                    <div class="col-md-6">
                                        <input id="supplier_id" type="text" name="supplier_id" value="{{ $order->supplier_id }}" hidden>
                                        <input id="supplier_code" type="text" class="form-control" value="{{ $order->supplier->name }}" required>
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
                                                $("#supplier_name").val(ui.item.no);
                                                $("#supplier_address").val(ui.item.address);
                                                $("#supplier_attn").val(ui.item.attn);
                                            }
                                        });
                                    </script>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Date</label>
                                    <div class="col-md-6">
                                        <input id="created_at" type="text" class="form-control" value="{{ $order->created_at }}" name="created_at" required>
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
                        <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Supplier ID</label>
                                    <div class="col-md-6">
                                        <input id="supplier_name" type="text" class="form-control" value="{{ $order->supplier->no }}" required readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Address</label>
                                    <div class="col-md-6">
                                        <textarea id="supplier_address" class="form-control" rows="4" required readonly>{{ $order->supplier->address }}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Attn</label>
                                    <div class="col-md-6">
                                        <input id="supplier_attn" type="text" value="{{ $order->supplier->attn }}" class="form-control" required readonly>
                                    </div>
                                </div>
                        </div>
                        <div class="col-md-4">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Dispatch To</label>
                                    <div class="col-md-6">
                                        <input id="dispacth_to" type="text" class="form-control" name="dispacth_to" value="{{ $order->dispatch_to }}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Address</label>
                                    <div class="col-md-6">
                                        <textarea id="dispacth_address" class="form-control" name="dispacth_address" rows="4" required>{{ $order->dispatch_address }}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Attn</label>
                                    <div class="col-md-6">
                                        <input id="dispacth_name" type="text" class="form-control" name="dispacth_name" value="{{ $order->dispatch_name }}" required>
                                    </div>
                                </div>
                        </div>
                    </div>
                    </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Payment Term</label>
                                    <div class="col-md-6">
                                        <input id="payment_term" type="text" class="form-control" value="{{ $order->payment_term }}" name="payment_term" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Incoterms</label>
                                    <div class="col-md-6">
                                        <input id="incoterms" type="text" class="form-control" value="{{ $order->incoterms }}" name="incoterms" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Shipped By</label>
                                    <div class="col-md-6">
                                        <input id="incoterms" type="text" class="form-control" value="{{ $order->ship_by }}" name="ship_by" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Delivery Date</label>
                                    <div class="col-md-6">
                                        <input id="delivery_date" type="text" class="form-control" value="{{ $order->delivery_date }}" name="delivery_date" required>
                                        <!-- <select class="form-control" name="delivery_date" required>
                                        @foreach($order->purchase->requests as $request)
                                            <option>{{ $request->model }}</option>
                                        @endforeach
                                        </select> -->
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#delivery_date').datetimepicker({
                                                format: 'YYYY-MM-DD',
                                                defaultDate: new Date
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
                            var diskon = parseInt($('#diskon').val());
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
                            diskon = sub_total*diskon/100;
                            $('#diskon_real').val(diskon);
                            total = sub_total-diskon;
                            $('#total2').val(total);
                            tax = total*tax/100;
                            $('#tax_real').val(tax);
                            total = total-tax;

                            //total = total-diskon;
                            $('#sub_total').val(sub_total);
                            $('#total').val(total);
                        }
                    </script>
                    <div class="row">
                        <div id="formItem">
                        @foreach($order->orderitem as $request)
                        <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-1">
                                    <input id="qty" type="text" class="form-control qty" placeholder="qty.." onkeyup="changeValue()" value="{{ $request->qty }}" name="qty[]" value="1" required>
                                </div>
                                <div class="col-md-2">
                                    <input type="text" onfocus="autoComplete(this)" class="form-control" value="{{ $request->item->code }}" placeholder="Part No..">
                                    <input id="" type="text" class="item_code" placeholder="Item Code.." name="item_code[]" value="{{ $request->item->id }}" hidden required>
                                </div>
                                <div class="col-md-2">
                                    <input id="item_code" type="text" class="form-control" placeholder="Item Code.." value="{{ $request->item->item->item_no }}" required readonly>
                                </div>
                                <div class="col-md-2">
                                    <input id="description[]" type="text" class="form-control description" placeholder="Description.." name="description[]" value="{{ $request->description }}" required>
                                </div>
                                <div class="col-md-2">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span>
                                    <input id="unit_price" type="text" class="form-control unit_price" onkeyup="changeValue()" placeholder="Unit Price.." value="{{ $request->unit_price }}" name="unit_price[]" required>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span>  
                                    <input id="line_total" type="text" class="form-control line_total" placeholder="Line Total.." name="line_total[]" required readonly>
                                    </div>
                                </div>
                                <!-- <div class="col-md-1">
                                   
                                </div> -->
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
                                        $(parentElem).find('#item_code').val(ui.item.item_code);
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
                                        <input id="warranty" type="text" class="form-control" value="{{ $order->warranty }}" name="warranty" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Authorized By</label>
                                    <div class="col-md-6">
                                        <input id="author" type="text" class="form-control" value="{{ $order->author }}" name="author" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Acknowledged By</label>
                                    <div class="col-md-6">
                                        <input id="diketahui" type="text" class="form-control" value="{{ $order->diketahui }}" name="diketahui" required>
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
                                    <label for="part_no" class="col-md-4 control-label">Discount</label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                        <span class="input-group-addon">&nbsp; &nbsp; &nbsp;</span> 
                                        <input id="diskon" type="text" class="form-control" onkeyup="changeValue()" value="{{ $order->diskon*100/$order->sub_total }}" required>
                                        <input id="diskon_real" value="{{ $order->diskon }}" name="diskon" hidden required>
                                        <span class="input-group-addon">%</span> 
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label"></label>
                                    <div class="col-md-8">
                                    <div class="input-group">
                                    <span class="input-group-addon">Rp</span> 
                                        <input id="total2" type="text" class="form-control" readonly required>
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="part_no" class="col-md-4 control-label">Tax</label>
                                    <div class="col-md-8">
                                    <div class="input-group">              
                                        <span class="input-group-addon">&nbsp; &nbsp; &nbsp;</span> 
                                        <input id="tax" type="text" class="form-control" onkeyup="changeValue()" value="{{ $order->tax*100/($order->sub_total-$order->diskon) }}" required>
                                        <input id="tax_real" value="{{ $order->tax }}" type="text" name="tax" hidden required>
                                        <span class="input-group-addon">%</span> 
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
                        <i class="fa fa-btn fa-user"></i> Edit
                    </button>
                </form>
            </div>
    </div>
</div>
<script type="text/javascript">
    changeValue();
</script>
@endsection
