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
            <div class="col-md-9">&nbsp;</div>
            <div class="col-md-3">
                <a class="btn btn-success btn-block" href="{{ url('transaksi/create') }}">Tambahkan Transaksi</a>
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
                                <td colspan="2">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($transaksi as $index => $trans)
                            <div id="transaksi">
                                <tr>
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
                                        <a class="btn btn-info" onclick="ShowDetails(this)">Details</a>
                                    </td>
                                    <td>
                                        <form method="post" action="{{ url('transaksi/'.$trans->id) }}">
                                            {{ csrf_field() }}
                                            <input type="text" name="_method" value="delete" hidden>
                                            <input type="submit" class="btn btn-danger" value="Delete">
                                        </form>
                                    </td>
                                </tr>
                                <div id="desc">
                                    
                                <tr class="details">
                                    <td colspan="12">
                                    <table class="table table-bordered">
                                @foreach($trans->costs as $index => $cost)
                                        <tr>
                                            <td>{{ $index+1 }}</td>
                                            <td>{{ $cost->created_at }}</td>
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
