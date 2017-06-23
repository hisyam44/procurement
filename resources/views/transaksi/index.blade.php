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
                <a class="btn btn-success" href="{!! strpos(Request::fullUrl(),'?') ? Request::fullUrl().'&' : Request::fullUrl().'?' !!}print=true">Download Excel <span class="glyphicon glyphicon-print"></span></a>
            </div>
            <div class="col-md-3">
                <a class="btn btn-success btn-block" href="{{ url('transaksi/create') }}">Tambahkan Transaksi</a>
            </div>
        </div>
    </div>
    <div class="row">
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
                            <input class="form-control" type="text" name="rekening_code" id="rekening_code" placeholder="Rekening Code..." value="{{ isset($_GET['rekening_code'])?$_GET['rekening_code']:'' }}"></input>
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
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <td>No</td>
                                <td>Nama Project</td>
                                <td>Kode Project</td>
                                <td>Tipe</td>
                                <td>Kepada</td>
                                <td>Rekening</td>
                                <td>Jumlah Total</td>
                                <td>Direksi</td>
                                <td>Kepala Bagian</td>
                                <td>Kasir</td>
                                <td>Penerima</td>
                                <td colspan="3">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($transaksi as $index => $trans)
                            <div id="transaksi">
                                <tr>
                                    <td>{{ sprintf('%06d',$trans->id) }}</td>
                                    <td>{{ $trans->project_name }}</td>
                                    <td>{{ $trans->project_code }}</td>
                                    <td>{{ strtoupper($trans->type) }}</td>
                                    <td>{{ $trans->receiver }}</td>
                                    <td>{{ $trans->receiver_rekening }}</td>
                                    <td>Rp. {{ $trans->amount_total }}</td>
                                    <td>{{ $trans->direksi }}</td>
                                    <td>{{ $trans->kepala_bagian }}</td>
                                    <td>{{ $trans->kasir }}</td>
                                    <td>{{ $trans->penerima }}</td>
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
                                            <td colspan="2">{{ strtoupper($cost->type) }}</td>
                                            <td colspan="2">Rekening Kode : {{ $cost->rekening_code }}</td>
                                            <td colspan="2">Cost Code : {{ $cost->code }}</td>
                                            <td colspan="2">Rp.{{ $cost->amount }}</td>
                                            <td colspan="2">{{ $cost->description }}</td>
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
        </div>
    </div>
</div>
@endsection
