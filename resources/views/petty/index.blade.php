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
                <a class="btn btn-default" href="" data-toggle="modal" data-target="#myModal">Petty Cash Report</a>
            </div>
            <div class="col-md-3">
                <a class="btn btn-success btn-block" href="{{ url('transaksi/petty/create') }}">New Petty Cash</a>
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
                                <td>Date</td>
                                <td>Total</td>
                                <td>Admin</td>
                                <td>Approval 1</td>
                                <td>Approval 2</td>
                                <td>Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($petties as $index => $petty)
                            <tr>
                                <td>{{ $petty->created_at->format('d-m-Y') }}</td>
                                <td>Rp. {{ $petty->total }}</td>
                                <td>{{ $petty->admin }}</td>
                                <td>{{ $petty->approval_1 }}</td>
                                <td>{{ $petty->approval_2 }}</td>
                                <td>
                                    <form method="post" action="{{ url('transaksi/petty/'.$petty->id) }}">
                                        {{ csrf_field() }}
                                        <input type="text" name="_method" value="delete" hidden>
                                        <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Petty Cash Report</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" role="form" method="POST" action="{{ url('/transaksi/petty/print') }}">
                                {{ csrf_field() }}
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
            </div>
            {{ $petties->render() }}
        </div>
    </div>
</div>
@endsection
