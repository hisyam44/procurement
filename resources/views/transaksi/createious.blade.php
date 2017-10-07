@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/transaksi') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-4 control-label">No. IOU</label>
                                    <div class="col-md-6">
                                        <input class="form-control" id="no_iou" name="no_iou"></input>
                                    </div>
                                </div>
                                    <script type="text/javascript">
                                        $("#no_iou").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/iou/completion') }}",
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
                                                $("#category_accounting_id").val(ui.item.acc_id);
                                                $("#category_accounting").val(ui.item.acc_val);
                                                $("#created_at").val(ui.item.created_at);
                                                $("#receiver").val(ui.item.receiver);
                                                $("#penerima").val(ui.item.penerima);
                                                $("#direksi").val(ui.item.direksi);
                                                $("#kasir").val(ui.item.kasir);
                                                $("#kepala_bagian").val(ui.item.kepala_bagian);
                                                $("#amount_total").val(ui.item.amount_total);
                                                $("#keterangan").val(ui.item.keterangan);
                                            }
                                        });
                                    </script>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-4 control-label">No Voucher</label>
                                    <div class="col-md-6">
                                        <input class="form-control" name="no_voucher" value="{{ $no_voucher }}" readonly></input>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-4 control-label">Category Operational</label>
                                    <div class="col-md-6">
                                        <input type="text" id="category_accounting_id" name="category_accounting" required hidden></input>
                                        <input type="text" class="form-control" id="category_accounting" readonly required></input>
                                    </div>
                                    <script type="text/javascript">
                                        $("#category_accounting").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/accounting/completion') }}",
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
                                                $("#category_accounting_id").val(ui.item.id);
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                            <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Tanggal</label>
                                <div class="col-md-6">
                                    <input id="created_at" type="text" class="form-control" name="created_at" readonly required>
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
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="project_name" class="col-md-4 control-label">Nama Project</label>
                                <div class="col-md-6">
                                    <input id="project_name" type="text" class="form-control" value="Project PBTR Pekalongan" name="project_name" required readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="project_code" class="col-md-4 control-label">Kode Project</label>
                                <div class="col-md-6">
                                    <input id="project_code" type="text" class="form-control" value="20-16-PB001" name="project_code" required readonly>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">

                                    <input type="text" name="type_transaksi" value="{{ $type }}" hidden>
 
                            <div class="form-group">
                                <label for="receiver" class="col-md-4 control-label">Atas Nama</label>
                                <div class="col-md-6">
                                    <input id="receiver" type="text" class="form-control" name="receiver" onkeyup="PenerimaChange(this.value)" readonly required>
                                </div>
                            </div>
                            @if($type == "bank")
                            <div class="form-group">
                                <label for="project_code" class="col-md-4 control-label">No. Rek</label>
                                <div class="col-md-6">
                                    <input id="receiver_rekening" type="text" class="form-control" name="receiver_rekening" required>
                                </div>
                            </div>
                            @endif
                        </div>
                        <div class="col-md-4">
                            @if($type == "bank")
                            <div class="form-group">
                                <label for="project_code" class="col-md-4 control-label">Bank</label>
                                <div class="col-md-6">
                                    <input id="bank" type="text" class="form-control" name="bank" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="project_code" class="col-md-4 control-label">Cab/Kota</label>
                                <div class="col-md-6">
                                    <input id="bank_details" type="text" class="form-control" name="bank_details" required>
                                </div>
                            </div>
                            @endif
                        </div>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <!-- <div class="panel">
                            <div class="panel-body">
                            <div id="formRequest">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-6">&nbsp;</div>
                                        <div class="col-md-2">
                                            <div class="input-group">
                                                <span class="input-group-addon">Rp.</span>
                                                <input id="amount[]" type="text" class="form-control jumlah" name="amount[]" placeholder="Jumlah..." value="0" onkeyup="jumlahTotal()" required>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="description" type="text" class="form-control" name="description[]" placeholder="Details..." required>
                                        </div>
                                        <div class="col-md-1">
                                            
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            </div>
                        </div> -->
                        <script type="text/javascript">
                            function GantiTipe(){
                                var tipe = $('#type1').val();
                                var cost_tipe = $('#cost_type1').val();
                                $('.type').val(tipe);
                                $('.cost_type').val(cost_tipe);
                            }
                        </script>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Realisasi</label>
                                        <div class="col-md-9">
                                        <div class="input-group">
                                            <span class="input-group-addon">Rp.</span>
                                            <input id="amount[]" type="text" class="form-control jumlah" name="amount[]" required>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="amount_total" class="col-md-4 control-label">Jumlah Total</label>
                                        <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">Rp.</span>
                                            <input id="amount_total" type="text" class="form-control" name="amount_total" value="0" readonly required>
                                        </div>
                                        </div>
                                        <script type="text/javascript">
                                            function jumlahTotal(){
                                                var jumlahs = $('.jumlah');
                                                console.log(jumlahs);
                                                var total = 0;
                                                for(var i=0;i<jumlahs.length;i++){
                                                    total += parseInt($(jumlahs[i]).val());
                                                }
                                                $('#amount_total').val(total);
                                            }
                                        </script>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Ket</label>
                                        <div class="col-md-9">
                                            <input id="keterangan" type="text" class="form-control" name="keterangan" readonly required>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="col-md-3">
                                    <a class="btn btn-success pull-right" onclick="appendNewFormRequest()">Add New Cost</a>
                                </div> -->
                            </div>
                        </div>
                        <script type="text/javascript">
                            function deleteRequest(elem){
                                console.log($(elem).parent());
                                var panel = $(elem).parent().parent().parent();
                                panel.remove();
                                jumlahTotal();
                            }
                        </script>
                        <script type="text/javascript">
                            function appendNewFormRequest(){
                                var formRequest = $('#formRequest');
                                $('<div class="row"> <div class="form-group"> <div class="col-md-6">&nbsp;</div><div class="col-md-2"> <div class="input-group"> <span class="input-group-addon">Rp.</span> <input id="amount[]" type="text" class="form-control jumlah" name="amount[]" placeholder="Jumlah..." value="0" onkeyup="jumlahTotal()" required> </div></div><div class="col-md-3"> <input id="description" type="text" class="form-control" name="description[]" placeholder="Details..." required> </div><div class="col-md-1"> <a class="btn btn-danger pull-right" onclick="deleteRequest(this)">Delete</a> </div></div></div>').appendTo(formRequest);
                                jumlahTotal();
                            }
                        </script>
                    </div>
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="direksi" class="col-md-4 control-label">Direksi</label>
                                <div class="col-md-6">
                                    <input id="direksi" type="text" class="form-control" name="direksi" readonly required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="kepala_bagian" class="col-md-4 control-label">Kepala Bagian</label>
                                <div class="col-md-6">
                                    <input id="kepala_bagian" type="text" class="form-control" name="kepala_bagian" readonly required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="kasir" class="col-md-4 control-label">Kasir</label>
                                <div class="col-md-6">
                                    <input id="kasir" type="text" class="form-control" name="kasir" readonly required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="penerima" class="col-md-4 control-label">Yang Menerima</label>
                                <div class="col-md-6">
                                    <input id="penerima" type="text" class="form-control" name="penerima" readonly required>
                                </div>
                            </div>
                            <script type="text/javascript">
                                function PenerimaChange(val){
                                    $('#penerima').val(val);
                                }
                            </script>
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
