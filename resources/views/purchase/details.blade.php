@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="panel-body">
            <a href="{{ url('/purchase/'.$purchase->id.'/print') }}" class="btn btn-success pull-right">Export To PDF</a>
        </div>
    </div>
    <div class="row">
        <table class="table table-bordered" id="tableData">
            <tbody>
                <tr>
                    <td colspan="5">
                        Department          : {{ $purchase->department }} <br>
                        Purchase Request No : {{ sprintf('%05d',$purchase->id) }} <br>
                        Date                : {{ $purchase->created_at }}<br>
                        Unit Code           : {{ $purchase->unit->code }}<br>
                    </td>
                    <td colspan="4">
                        Type    : {{ $purchase->type }} <br>
                        KM/HM   : {{ $purchase->km_hm }}<br>
                        MOL     : {{ $purchase->mol }}<br>
                    </td>
                </tr>
                <tr>
                    <td>NO.</td>
                    <td colspan="2">Part Number</td>
                    <td>Component</td>
                    <td>Part Description</td>
                    <td>QTY</td>
                    <td>UOM</td>
                    <td>Model</td>
                    <td>Remark</td>
                </tr>
                @foreach($purchase->requests as $index => $request)
                <tr>
                    <td>{{ $index+1 }}</td>
                    <td colspan="2">{{ $request->no }}</td>
                    <td>{{ $request->component }}</td>
                    <td>{{ $request->description }}</td>
                    <td>{{ $request->qty }}</td>
                    <td>{{ $request->satuan }}</td>
                    <td>{{ $request->model }}</td>
                    <td>{{ $request->damage_description }}</td>
                </tr>
                @endforeach
                <tr>
                    <td colspan="5">
                        <br><br>Warehouse Manager : {{ $purchase->warehouse_manager }}
                        <br><br><br>Maintenance Manager : {{ $purchase->maintenance_manager }}
                        <br><br><br>Project Manager : {{ $purchase->project_manager }}
                    </td>
                    <td colspan="4">
                    <br>
                        Purpose : {{ $purchase->purpose }}
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                    </td>
                    <td colspan="4">
                        Diverifikasi : <br>
                        <br>
                        <br>
                        <br>
                        Date : {{ $purchase->created_at }} <br>
                        TL : Pengontrolan dan Pengawasan Peralatan
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
