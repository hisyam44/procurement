
<style type="text/css">
    table > tbody > tr > td{
        padding: 1px 5px;
    }
    .bold{
        font-weight: bold;
    }
</style>
<table class="table table-bordered" id="tableData" style="">
            <tbody>
                <tr>
                    <td colspan="9">
                        <h3 style="text-align: center;">Stock Report - {{ \Carbon\Carbon::now()->format('d-m-Y') }}</h3>
                    </td>
                </tr>
                <tr class="bold">
                    <td>No.</td>
                    <td>Part Number</td>
                    <td>Item Number</td>
                    <td>Component</td>
                    <td>Latest Unit Price</td>
                    <td>Receipts</td>
                    <td>Issues</td>
                    <td>Returns</td>
                    <td>Stock</td>
                </tr>
                @foreach($part as $index => $prt)
                    <?php $receipts = 0 ?>
                    @foreach($prt->materials as $material)
                        <?php $receipts += $material->qty ?>
                    @endforeach

                    <?php $iss = 0 ?>
                    @foreach($prt->issues as $issue)
                        <?php $iss += $issue->qty ?>
                    @endforeach

                    <?php $returns = 0 ?>
                    @foreach($prt->returns as $issue)
                        <?php $returns += $issue->qty ?>
                    @endforeach

                    @foreach($prt->orders as $issue)
                        <?php $price = $issue->unit_price ?>
                    @endforeach

                    <?php $stock = $receipts-$iss+$returns ?>
                <tr>
                    <td>{{ $index+1 }}</td>
                    <td>{{ $prt->code }}</td>
                    <td>{{ $prt->item->item_no }}</td>
                    <td>{{ $prt->item->component }}</td>
                    <td>Rp. {{ number_format($price) }}</td>
                    <td>{{ $receipts }}</td>
                    <td>{{ $iss }}</td>
                    <td>{{ $returns }}</td>
                    <td>{{ $stock }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>