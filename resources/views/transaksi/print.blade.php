<style type="text/css">
	td{
		border:1px solid #000;
		padding: 5px;
	}
</style>
<table class="table table-striped">
    <thead>
    	<tr>
            <td colspan="11">
                <h2 style="text-align: center;">Laporan Transaksi tanggal {{ $_GET['from'] }} s/d {{ $_GET['to'] }}</h2>
            </td>
        </tr>
        @if(substr(Route::getCurrentRoute()->getPath(),10) === "cash")
        <tr style="font-weight: bold;text-align: center;">
            <td colspan="2">No Voucher</td>
            <td colspan="2">Tanggal</td>
            <td>Category Accounting</td>
            <td colspan="2">Details</td>
            <td>Debit</td>
            <td>Kredit</td>
            <td>Saldo</td>
            <td>Keterangan</td>
        </tr>
        @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "iou")
        <tr style="font-weight: bold;text-align: center;">
            <td colspan="3">No Voucher</td>
            <td colspan="2">Nama</td>
            <td colspan="2">Details</td>
            <td colspan="2">Jumlah</td>
            <td>Tanggal Kasbon</td>
            <td>Keterangan</td>
        </tr>
        @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "ious")
        <tr style="font-weight: bold;text-align: center;">
            <td>No Voucher</td>
            <td>Tanggal</td>
            <td>Nama</td>
            <td>Category Operational</td>
            <td colspan="3">Details</td>
            <td colspan="3">Jumlah</td>
            <td>Keterangan</td>
        </tr>
        @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "bank")
        <tr style="font-weight: bold;text-align: center;">
            <td colspan="2">No Voucher</td>
            <td>Tanggal</td>
            <td>No.Giro/Cek</td>
            <td>Category Accounting</td>
            <td colspan="2">Details</td>
            <td>Debit</td>
            <td>Kredit</td>
            <td>Saldo</td>
            <td>Keterangan</td>
        </tr>
        @else

        @endif
    </thead>
    <tbody>
    <?php
        $total_saldo = $latest_saldo;
        $total_debet = $latest_saldo;
        $total_credit = 0;
        $saldo = $latest_saldo;
    ?>
    <div id="transaksi">
        @if(substr(Route::getCurrentRoute()->getPath(),10) === "iou" || substr(Route::getCurrentRoute()->getPath(),10) === "ious")
        @else
        <tr>
            <td colspan="5"></td>
            <td colspan="2">Saldo Terakhir</td>
            <td>{{ number_format($latest_saldo) }}</td>
            <td></td>
            <td>{{ number_format($latest_saldo) }}</td>
            <td></td>
        </tr>
        @endif
    @foreach($transaksi as $index => $trans)
        @foreach($trans->costs as $index => $cost)
        <?php
            $cost->type=="debet"?$saldo+=$cost->amount:$saldo-=$cost->amount;
            $total_saldo = $saldo;
            $cost->type=="debet"?$total_debet+=$cost->amount:$total_credit+=$cost->amount;
        ?>
            @if(substr(Route::getCurrentRoute()->getPath(),10) === "cash")
            <tr>
                <td colspan="2">{{ $trans->no_voucher }}</td>
                <td colspan="2">{{ $trans->created_at->format('d-M-y') }}</td>
                <td>{{ $trans->accounting->name }}</td>
                <td colspan="2">{{ $cost->description }}</td>
                <td>{{ $cost->type=="debet"?number_format($cost->amount):'' }}</td>
                <td>{{ $cost->type=="credit"?number_format($cost->amount):'' }}</td>
                <td>{{ number_format($saldo) }}</td>
                <td>{{ $trans->keterangan }}</td>
            </tr>
            @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "iou")
            <tr>
                <td colspan="3">{{ $trans->no_voucher }}</td>
                <td colspan="2">{{ $trans->receiver }}</td>
                <td colspan="2">{{ $cost->description }}</td>
                <td colspan="2">{{ number_format($cost->amount) }}</td>
                <td>{{ $trans->created_at->format('d-M-y') }}</td>
                <td>{{ $trans->keterangan }}</td>
            </tr>
            @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "ious")
            <tr>
                <td>{{ $trans->no_voucher }}</td>
                <td>{{ $trans->created_at->format('d-M-y') }}</td>
                <td>{{ $trans->receiver }}</td>
                <td>{{ $trans->accounting->name }}</td>
                <td colspan="3">{{ $cost->description }}</td>
                <td colspan="3">{{ number_format($cost->amount) }}</td>
                <td>{{ $trans->keterangan }}</td>
            </tr>
            @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "bank")
            <tr>
                <td colspan="2">{{ $trans->no_voucher }}</td>
                <td>{{ $trans->created_at->format('d-M-y') }}</td>
                <td>{{ $trans->keterangan }}</td>
                <td>{{ $trans->accounting->name }}</td>
                <td colspan="2">{{ $cost->description }}</td>
                <td>{{ $cost->type=="debet"?number_format($cost->amount):'' }}</td>
                <td>{{ $cost->type=="credit"?number_format($cost->amount):'' }}</td>
                <td>{{ number_format($saldo) }}</td>
                <td>{{ $trans->bank_details }}</td>
            </tr>
            @else

            @endif
        @endforeach
    @endforeach
    </div>
            <tr>
                <td colspan="7">Total</td>
            @if(substr(Route::getCurrentRoute()->getPath(),10) === "iou")
                <td colspan="2"><b>{{ number_format($total_saldo*-1) }}</b></td>
                <td></td>
            @elseif(substr(Route::getCurrentRoute()->getPath(),10) === "ious")
                <td colspan="3"><b>{{ number_format($total_saldo) }}</b></td>
            @else
                <td><b>{{ number_format($total_debet) }}</b></td>
                <td><b>{{ number_format($total_credit) }}</b></td>
                <td><b>{{ number_format($total_saldo) }}</b></td>
            @endif
                <td></td>
            </tr>
    </tbody>
</table>