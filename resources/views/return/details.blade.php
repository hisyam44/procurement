
<style type="text/css">
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
                        <h3 style="text-align: center;">Store Return</h3>
                    </td>
                </tr>
                <tr>
                    <td class="bold">Date</td>
                    <td>{{ $issue->created_at->format('d-m-Y') }}</td>
                    <td></td>
                    <td class="bold">No</td>
                    <td>{{ $issue->no }}</td>
                </tr>
                <tr>
                    <td class="bold">Location</td>
                    <td>{{ $issue->lokasi }}</td>
                    <td></td>
                    <td class="bold">S/N</td>
                    <td>{{ $issue->sn }}</td>
                </tr>
                <tr>
                    <td class="bold">Type / Code Unit</td>
                    <td>{{ $issue->unit->code }}</td>
                    <td></td>
                    <td class="bold">H/M</td>
                    <td>{{ $issue->hm }}</td>
                </tr>
                <tr>
                    <td colspan="5">
                        <table style="width: 100%" border="1">
                            <tr class="bold" style="background: #ddd">
                                <td>No.</td>
                                <td>Part NO</td>
                                <td>Item Name</td>
                                <td>QTY</td>
                                <td>UOM</td>
                                <td>Description/Issue</td>
                            </tr>
                            @foreach($issue->items as $index => $item)
                            <tr>
                                <td>{{ $index+1 }}</td>
                                <td>{{ $item->part->code }}</td>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->qty }}</td>
                                <td>{{ $item->part->item->uom }}</td>
                                <td>{{ $item->keterangan }}</td>
                            </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="bold">Acknowledged By,<br><br><br>{{ $issue->diketahui }}</td>
                    <td></td>
                    <td class="bold">Accepted By,<br><br><br>{{ $issue->diterima }}</td>
                    <td></td>
                    <td class="bold">Returned By,<br><br><br>{{ $issue->dikembalikan }}</td>
                </tr>
            </tbody>
        </table>