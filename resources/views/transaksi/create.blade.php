@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            @if(Session::has('message'))
                <div class="alert alert-info">
                  {{ Session::get('message') }}
                </div>
            @endif
        </div>
    </div>
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/transaksi') }}">
                    {{ csrf_field() }}
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
                                    <label for="type_transaksi" class="col-md-4 control-label">Category Accounting</label>
                                    <div class="col-md-6">
                                        <input type="text" id="category_accounting_id" name="category_accounting" required hidden></input>
                                        <input type="text" class="form-control" id="category_accounting" required></input>
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
                            @if($type == "bank")
                            <div class="form-group">
                                <label class="col-md-4 control-label">No.Giro/Cek</label>
                                <div class="col-md-6">
                                    <input id="keterangan" type="text" class="form-control" name="keterangan" required>
                                </div>
                            </div>
                            @endif
                        </div>
                        <div class="col-md-4">

                                    <input type="text" name="type_transaksi" value="{{ $type }}" hidden>
 
                            <div class="form-group">
                                <label for="receiver" class="col-md-4 control-label">Atas Nama</label>
                                <div class="col-md-6">
                                    <input id="receiver" type="text" class="form-control" name="receiver" onkeyup="PenerimaChange(this.value)" required>
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
                        <div class="panel">
                            <div class="panel-body">
                            <div id="formRequest">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-2">
                                            <select class="form-control" id="type1" onchange="GantiTipe()" name="tipe_cost" required>
                                                <option>Debet</option>
                                                <option>Credit</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <select id="cost_type1" class="form-control" onchange="GantiTipe()" name="cost_type[]" required>
                                                <option>MT</option>
                                                <option>LB</option>
                                                <option>EQ</option>
                                                <option>SC</option>
                                                <option>OH</option>
                                                <option>PB</option>
                                                <option>OI</option>
                                            </select>
                                        </div>
                                            <input id="code[]" type="text" name="code[]" value="0" required hidden>
                                        <div class="col-md-3">
                                            <div class="input-group">
                                                <span class="input-group-addon">Rp.</span>
                                                <input id="amount[]" type="text" class="form-control jumlah" name="amount[]" placeholder="Jumlah..." value="0" onkeyup="jumlahTotal()" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <input id="description" type="text" class="form-control" name="description[]" placeholder="Details..." required>
                                        </div>
                                        <div class="col-md-1">
                                            <!-- <a class="btn btn-danger pull-right" onclick="deleteRequest(this)">Delete</a> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
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
                                <div class="col-md-5">
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
                                    @if(strpos(Request::url(),"cash"))
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Ket</label>
                                        <div class="col-md-9">
                                            <input id="keterangan" type="text" class="form-control" name="keterangan" required>
                                        </div>
                                    </div>
                                    @endif
                                </div>
                                <div class="col-md-3">
                                    <a class="btn btn-success pull-right" onclick="appendNewFormRequest()">Add New Cost</a>
                                </div>
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
                                $('<div class="row"> <div class="form-group"> <div class="col-md-2"> <input class="form-control type" id="type[]" value="Debet" readonly> </div><div class="col-md-2"> <input class="form-control cost_type" id="cost_type[]" name="cost_type[]" value="MT" readonly required> </div><input id="code[]" type="text" value="0" name="code[]" hidden required> <div class="col-md-3"> <div class="input-group"> <span class="input-group-addon">Rp.</span> <input id="amount[]" type="text" class="form-control jumlah" name="amount[]" placeholder="Jumlah..." value="0" onkeyup="jumlahTotal()" required> </div></div><div class="col-md-4"> <input id="description" type="text" class="form-control" name="description[]" placeholder="Details..." required> </div><div class="col-md-1"> <a class="btn btn-danger pull-right" onclick="deleteRequest(this)">Delete</a> </div></div></div>').appendTo(formRequest);
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
                                    <input id="direksi" type="text" class="form-control" value="Sarita" name="direksi" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="kepala_bagian" class="col-md-4 control-label">Kepala Bagian</label>
                                <div class="col-md-6">
                                    <input id="kepala_bagian" type="text" class="form-control" value="Veera" name="kepala_bagian" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="kasir" class="col-md-4 control-label">Kasir</label>
                                <div class="col-md-6">
                                    <input id="kasir" type="text" value="Chinnababu" class="form-control" name="kasir" required>
                                </div>
                            </div>
                            <div class="form-group" {{ strpos(Request::url(),"bank")?'style=display:none':'' }}>
                                <label for="penerima" class="col-md-4 control-label">Yang Menerima</label>
                                <div class="col-md-6">
                                    <input id="penerima" type="text" class="form-control" name="penerima" required>
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
