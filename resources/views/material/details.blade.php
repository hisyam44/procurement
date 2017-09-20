
<style type="text/css">
    *{
        font-size: 10;
    }
    table > tbody > tr > td{
        padding: 1px 5px;
    }
    .bold{
        font-weight: bold;
    }
</style>
<table class="table table-bordered" id="tableData" style="margin: 0 auto;width: 100%;">
            <tbody>
                <tr>
                    <td colspan="5">
                        <h3 style="text-align: center;">Material Receipt</h3>
                    </td>
                </tr>
                <tr>
                    <td class="bold">Tanggal</td>
                    <td>{{ $material->created_at }}</td>
                    <td></td>
                    <td class="bold">Nomor P.O</td>
                    <td>{{ $material->order->no }}</td>
                </tr>
                <tr>
                    <td class="bold">Lokasi</td>
                    <td>{{ $material->lokasi }}</td>
                    <td></td>
                    <td class="bold">Supplier</td>
                    <td>{{ $material->order->supplier->name }}</td>
                </tr>
                <tr>
                    <td class="bold">Type / Code Unit</td>
                    <td>{{ $material->unit->code }}</td>
                    <td></td>
                    <td class="bold">Delivery Man</td>
                    <td>{{ $material->deliveryman }}</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <table style="width: 100%" border="1">
                            <tr class="bold" style="background: #ddd">
                                <td>No.</td>
                                <td>Part Number</td>
                                <td>Part Name</td>
                                <td>QTY</td>
                                <td>BTL</td>
                                <td>NET</td>
                                <td>Keterangan</td>
                            </tr>
                            @foreach($material->items as $index => $item)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $item->partno->code }}</td>
                                <td>{{ $item->part_name }}</td>
                                <td>{{ $item->qty }}</td>
                                <td>{{ $item->partno->item->uom }}</td>
                                <td>{{ $item->net }}</td>
                                <td>{{ $item->description }}</td>
                            </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="bold">Mengetahui,<br><br><br>{{ $material->diketahui }}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="bold">Diterima,<br><br><br>{{ $material->diterima }}</td>
                </tr>
            </tbody>
        </table>