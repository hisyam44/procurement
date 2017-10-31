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
            <div class="col-md-9">
                <a class="btn btn-success" href="" data-toggle="modal" data-target="#myModal">Print Report <span class="glyphicon glyphicon-print"></span></a>
                <a class="btn btn-default" href="" data-toggle="modal" data-target="#myModal2">Kas Harian</a>
            </div>
            <div class="col-md-3">
                <a class="btn btn-success btn-block" href="{{ url('transaksi/'.substr(Route::getCurrentRoute()->getPath(),10).'/create') }}">Tambahkan  Transaksi</a>
            </div>
        </div>
    </div>
                <div class="modal fade" id="myModal2" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Laporan Kas Harian</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" role="form" method="GET" action="{{ url('transaksi/cash/daily') }}">
                                    <div class="form-group">
                                        <label for="code" class="col-md-4 control-label">Tanggal</label>
                                        <div class="col-md-6">
                                            <input type="text" name="date" class="form-control" id="date" required>
                                        </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#date').datetimepicker({
                                                    format: 'YYYY-MM-DD',
                                                    defaultDate: new Date
                                                });
                                            });
                                        </script>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-4">
                                            <button type="submit" class="btn btn-primary">
                                                Proceed Report
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- <div class="modal-footer">
                                <button class="btn" data-dismiss="modal">Dissmiss</button>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Excel Report</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" role="form" method="GET" action="{{ Request::url() }}">
                                    <input type="text" name="print" value="true" hidden>
                                    <div class="form-group">
                                        <label for="code" class="col-md-4 control-label">Dari Tanggal</label>
                                        <div class="col-md-6">
                                            <input type="text" name="from" class="form-control" id="from" value="{{ \Carbon\Carbon::now()->yesterday() }}" required>
                                        </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#from').datetimepicker({
                                                    format: 'YYYY-MM-DD',
                                                });
                                            });
                                        </script>
                                    </div>
                                    <div class="form-group">
                                        <label for="code" class="col-md-4 control-label">Sampai Tanggal</label>
                                        <div class="col-md-6">
                                            <input type="text" name="to" class="form-control" id="to" required>
                                        </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#to').datetimepicker({
                                                    format: 'YYYY-MM-DD',
                                                    defaultDate: new Date
                                                });
                                            });
                                        </script>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-4">
                                            <button type="submit" class="btn btn-primary">
                                                Proceed Report
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- <div class="modal-footer">
                                <button class="btn" data-dismiss="modal">Dissmiss</button>
                            </div> -->
                        </div>
                    </div>
                </div>
    <!-- <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" action="{{ url('transaksi') }}" method="get">
                        <div class="form-group">
                            <select class="form-control" name="type" placeholder="Tipe...">
                                <option>{{ isset($_GET['type'])?$_GET['type']:'' }}</option>
                                <option></option>
                                <option>Kas</option>
                                <option>Bank</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="cost_type" placeholder="Tipe...">
                                <option>{{ isset($_GET['cost_type'])?$_GET['cost_type']:'' }}</option>
                                <option></option>
                                <option>Debet</option>
                                <option>Credit</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" name="cost_code" id="cost_code" placeholder="Cost Code..." value="{{ isset($_GET['cost_code'])?$_GET['cost_code']:'' }}"></input>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" name="cost_type" id="cost_type" placeholder="Rekening Code..." value="{{ isset($_GET['rekening_code'])?$_GET['rekening_code']:'' }}"></input>
                        </div> 
                        <div class="form-group">
                            <input class="form-control" type="text" id="start_date" name="start_date" placeholder="Dari Tanggal..." value="{{ isset($_GET['start_date'])?$_GET['start_date']:'' }}"></input>
                            <script type="text/javascript">
                                $(function () {
                                    $('#start_date').datetimepicker({
                                        format: 'YYYY-MM-DD'
                                    });
                                });
                            </script>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" id="end_date" name="end_date" placeholder="Sampai Tanggal..." value="{{ isset($_GET['end_date'])?$_GET['end_date']:'' }}"></input>
                            <script type="text/javascript">
                                $(function () {
                                    $('#end_date').datetimepicker({
                                        format: 'YYYY-MM-DD'
                                    });
                                });
                            </script>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary">Tampilkan</button>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div> -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <td>No Voucher</td>
<!--                             @if(substr(Route::getCurrentRoute()->getPath(),10) != "bank")
                                <td>Nama Project</td>
                                <td>Kode Project</td>
                            @endif -->
                            @if(substr(Route::getCurrentRoute()->getPath(),10) === "iou" || substr(Route::getCurrentRoute()->getPath(),10) === "ious")
                                <td>Category Operational</td>
                            @else
                                <td>Category Accounting</td>
                            @endif
                                <td>Atas Nama</td>
                            @if(substr(Route::getCurrentRoute()->getPath(),10) === "bank")
                                <td>No. Rek</td>
                                <td>Bank</td>
                                <td>Bank Details</td>
                            @endif
                                <td>Jumlah Total</td>
                                <td>{{ strpos(Request::url(),"bank")?'No.Giro/Cek':'Keterangan' }}</td>
                                <!-- <td>Direksi</td>
                                <td>Kepala Bagian</td>
                                <td>Kasir</td>
                                <td>Penerima</td> -->
                                <td colspan="3">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($transaksi as $index => $trans)
                            <div id="transaksi">
                                <tr>
                                    <td>{{ $trans->no_voucher }}</td>

<!--                             @if(substr(Route::getCurrentRoute()->getPath(),10) != "bank")
                                    <td>{{ $trans->project_name }}</td>
                                    <td>{{ $trans->project_code }}</td>
                            @endif -->
                                    <td>{{ $trans->accounting->name }}</td>
                                    <td>{{ $trans->receiver }}</td>
                            @if(substr(Route::getCurrentRoute()->getPath(),10) === "bank")
                                    <td>{{ $trans->receiver_rekening }}</td>
                                    <td>{{ $trans->bank }}</td>
                                    <td>{{ $trans->bank_details }}</td>
                            @endif
                                    <td>Rp.{{ $trans->amount_total }}</td>
                                    <td>{{ $trans->keterangan }}</td>
                                    <!-- <td>{{ $trans->direksi }}</td>
                                    <td>{{ $trans->kepala_bagian }}</td>
                                    <td>{{ $trans->kasir }}</td>
                                    <td>{{ $trans->penerima }}</td> -->
                                    <td>
                                       <a class="btn btn-info" onclick="ShowDetails(this)"><span class="glyphicon glyphicon-list"></span></a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success" href="{{ url('transaksi/'.$trans->id.'/attachment') }}"><span class="glyphicon glyphicon-paperclip"></span></a>
                                    </td>
                                    <td>
                                        <form method="post" action="{{ url('transaksi/'.$trans->id) }}">
                                            {{ csrf_field() }}
                                            <input type="text" name="_method" value="delete" hidden>
                                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>
                                        </form>
                                    </td>
                                </tr>
                                <div id="desc">
                                    
                                <tr class="details">
                                    <td colspan="13">
                                    <table class="table table-bordered">
                                @foreach($trans->costs as $index => $cost)
                                        <tr>
                                            <td>{{ $index+1 }}</td>
                                            <td>{{ $trans->created_at }}</td>
                                            @if(substr(Route::getCurrentRoute()->getPath(),10) === "iou" || substr(Route::getCurrentRoute()->getPath(),10) === "ious")
                                            <td colspan="2">Rp.{{ $cost->amount }}</td>
                                            <td colspan="8">{{ $cost->description }}</td>
                                            @else
                                            <td colspan="2">{{ strtoupper($cost->type) }}</td>
                                            <td colspan="2">Cost Type : {{ $cost->cost_type }}</td>
                                            <td colspan="3">Rp.{{ $cost->amount }}</td>
                                            <td colspan="3">{{ $cost->description }}</td>
                                            @endif
                                        </tr>
                                @endforeach
                                    </table>
                                    </td>
                                </tr>
                                </div>
                            </div>
                            @endforeach
                            <script type="text/javascript">
                                $(".details").hide();
                                var hided = true;
                                function ShowDetails(elem){
                                    var detailsItem = $(elem).parent().parent();
                                    if(hided){
                                        $(detailsItem).next().fadeIn("slow");
                                    }else{
                                        $(detailsItem).next().fadeOut();
                                    }
                                    hided = !hided;
                                    console.log(detailsItem);
                                }
                            </script>
                        </tbody>
                    </table>
                </div>
            </div>
            {{ $transaksi->render() }}
        </div>
    </div>
</div>
@endsection
