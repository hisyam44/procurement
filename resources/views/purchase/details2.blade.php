
<style type="text/css">
    table > tbody > tr > td{
        border: 1px solid #000;
        padding: 1px 5px;
    }
</style>
<table class="table table-bordered" id="tableData">
            <tbody>
                <tr>
                    <td colspan="9">
                        <h3 style="text-align: center;">PURCHASE REQUESTS</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        Purchase Request No : {{ sprintf('%05d',$purchase->id) }} <br>
                        Date                : {{ $purchase->created_at }}<br>
                        Unit Code           : {{ $purchase->unit->code }}<br>
                    </td>
                    <td colspan="4">
                        Type    : {{ $purchase->type }} <br>
                        Cost    : Rp. {{ $purchase->cost }}<br>
                        KM/HM   : {{ $purchase->km_hm }}<br>
                        MOL     : {{ $purchase->mol }}<br>
                    </td>
                </tr>
                <tr>
                    <td>NO.</td>
                    <td>Spare Part Number</td>
                    <td>Komponen</td>
                    <td>Details</td>
                    <td>QTY</td>
                    <td>Measurement</td>
                    <td>Model</td>
                    <td>Device Code</td>
                    <td>Damage Description</td>
                </tr>
                @foreach($purchase->requests as $index => $request)
                <tr>
                    <td>{{ $index+1 }}</td>
                    <td>{{ $request->no }}</td>
                    <td>{{ $request->component }}</td>
                    <td>{{ $request->description }}</td>
                    <td>{{ $request->qty }}</td>
                    <td>{{ $request->satuan }}</td>
                    <td>{{ $request->model }}</td>
                    <td>{{ $request->device_code }}</td>
                    <td>{{ $request->damage_description }}</td>
                </tr>
                @endforeach
                <tr>
                    <td colspan="4">
                        <br>Warehouse Manager : {{ $purchase->warehouse_manager }}
                        <br><br>Maintenance Manager : {{ $purchase->maintenance_manager }}
                        <br><br>Project Manager : {{ $purchase->project_manager }}
                    </td>
                    <td colspan="5">
                        Optional : {{ $purchase->optional }}<br><br><br>
                        Purpose : {{ $purchase->purpose }}
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                    </td>
                    <td colspan="5">
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