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
                <a class="btn btn-success btn-block" href="{{ url('order/create') }}">New Purchase Order</a>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Enter The Purchase Request Number</h4>
                </div>
                <div class="modal-body">
                    <input id="reference_no" type="text" class="form-control" name="reference_no" required>
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
                                window.location.href = "{{ url('purchase') }}";
                            }
                        });
                    </script>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal">Close</button>
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
                                <td>No. PR</td>
                                <td>No. PO</td>
                                <td>Type</td>
                                <td>Supplier</td>
                                <td>Dispatch To</td>
                                <td>Payment Term</td>
                                <td>Incoterms</td>
                                <td>Delivery Date</td>
                                <td>Total</td>
                                <td colspan="5">Actions</td>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($orders as $index => $order)
                            <tr>
                                <td>{{ $order->reference_no }}</td>
                                <td>{{ $order->no }}</td>
                                <td>{{ strtoupper($order->type) }}</td>
                                <td>{{ $order->supplier->name }}</td>
                                <td>{{ $order->dispatch_to }}</td>
                                <td>{{ $order->payment_term }}</td>
                                <td>{{ $order->incoterms }}</td>
                                <td>{{ $order->delivery_date }}</td>
                                <td>Rp.{{ number_format($order->total) }}</td>
                                <td>
                                    <a class="btn btn-default" href="" data-toggle="modal" data-target="#myModal{{ $index }}"><span class="glyphicon glyphicon-file"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('order/'.$order->id) }}"><span class="glyphicon glyphicon-search"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-default" href="{{ url('order/'.$order->id) }}?print=1"><span class="glyphicon glyphicon-print"></span></a>
                                </td>
                                <td>
                                    <a class="btn btn-success" href="{{ url('order/'.$order->id.'/edit') }}"><span class="glyphicon glyphicon-edit"></span></a>
                                </td>
                                <td>
                                    <form method="post" action="{{ url('order/'.$order->id) }}">
                                        {{ csrf_field() }}
                                        <input type="text" name="_method" value="delete" hidden>
                                        <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>
                                    </form>
                                </td>
                                <div class="modal fade" id="myModal{{ $index }}" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Approval Progress</h4>
                                            </div>
                                            <div class="modal-body">
                                                <dl class="dl-horizontal">
                                                  <dt>Prepared By (Operator)</dt>
                                                  <dd>{{ $order->operator->name.', '.$order->operator->department.' Department' }}</dd>
                                                </dl>
                                                <dl class="dl-horizontal">
                                                  <dt>Acknowledged By (HoD)</dt>
                                                  <dd>{{ $order->hod?$order->hod->name.", Head of Department ".$order->hod->department:"Doesn't Approved yet" }}</dd>
                                                </dl>
                                                <dl class="dl-horizontal">
                                                  <dt>Approved By (Admin)</dt>
                                                  <dd>{{ $order->admin?$order->admin->name:"Doesn't Approved yet" }}</dd>
                                                </dl>
                                                <a class="btn btn-success btn-block" href="{{ url('order/'.$order->id.'/approve') }}">Approve as {{ \Auth::user()->name }}</a>
                                            </div>
                                            <!-- <div class="modal-footer">
                                                <button class="btn" data-dismiss="modal">Dissmiss</button>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            {{ $orders->render() }}
        </div>
    </div>
</div>
@endsection
