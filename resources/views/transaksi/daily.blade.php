<style type="text/css">
	td{
		border:0px solid #000;
		padding: 10px;
	}
</style>
<table class="table table-striped">
    <thead>
    	<tr>
            <td colspan="12">
                <h2 style="text-align: center;">Laporan Kas Harian tanggal {{ $_GET['date'] }}</h2>
            </td>
        </tr>
        <tr>
            <td colspan="12">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="12">
                <div style="font-weight: bold;">Kas tanggal {{ $_GET['date'] }}</div>
            </td>
        </tr>
        <tr style="font-weight: bold;text-align: center;">
            <td colspan="2">No Voucher</td>
            <td colspan="2">Tanggal</td>
            <td>Category Accounting</td>
            <td colspan="3">Details</td>
            <td>Debit</td>
            <td>Kredit</td>
            <td>Saldo</td>
            <td>Keterangan</td>
        </tr>
    </thead>
    <tbody>
    <?php
        $total_saldo = $latest_saldo;
        $total_debet = $latest_saldo;
        $total_credit = 0;
        $saldo = $latest_saldo;
    ?>
    <div id="transaksi">

        <tr>
            <td colspan="5"></td>
            <td colspan="3">Saldo Terakhir</td>
            <td style="text-align: right;">{{ number_format($latest_saldo) }}</td>
            <td></td>
            <td style="text-align: right;">{{ number_format($latest_saldo) }}</td>
            <td></td>
        </tr>

    @foreach($transaksi as $index => $trans)
        @foreach($trans->costs as $index => $cost)
        <?php
            $cost->type=="debet"?$saldo+=$cost->amount:$saldo-=$cost->amount;
            $total_saldo = $saldo;
            $cost->type=="debet"?$total_debet+=$cost->amount:$total_credit+=$cost->amount;
        ?>
            <tr>
                <td colspan="2">{{ $trans->no_voucher }}</td>
                <td colspan="2">{{ $trans->created_at->format('d-M-y') }}</td>
                <td>{{ $trans->accounting->name }}</td>
                <td colspan="3">{{ $cost->description }}</td>
                <td style="text-align: right;">{{ $cost->type=="debet"?number_format($cost->amount):'' }}</td>
                <td style="text-align: right;">{{ $cost->type=="credit"?number_format($cost->amount):'' }}</td>
                <td style="text-align: right;">{{ number_format($saldo) }}</td>
                <td>{{ $trans->keterangan }}</td>
            </tr>
        @endforeach
    @endforeach
    </div>
            <tr>
                <td colspan="8">Total</td>

                <td style="text-align: right;"><b>{{ number_format($total_debet) }}</b></td>
                <td style="text-align: right;"><b>{{ number_format($total_credit) }}</b></td>
                <td style="text-align: right;color:#00f;"><b>{{ number_format($total_saldo) }}</b></td>

                <td></td>
            </tr>
            <tr>
                <td colspan="12">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="12">
                    <div style="font-weight: bold;">Petty Cash tanggal {{ $_GET['date'] }}</div>
                </td>
            </tr>
            <tr style="font-weight: bold;text-align: center;">
                <td>100000</td>
                <td>50000</td>
                <td>20000</td>
                <td>10000</td>
                <td>5000</td>
                <td>2000</td>
                <td>1000</td>
                <td>500</td>
                <td>200</td>
                <td>100</td>
                <td>Total</td>
                <td></td>
            </tr>
            <?php
                $t100rb = 0;
                $t50rb = 0;
                $t20rb = 0;
                $t10rb = 0;
                $t5rb = 0;
                $t2rb = 0;
                $t1rb = 0;
                $t500r = 0;
                $t200r = 0;
                $t100r = 0;
                $total = 0;
            ?>
            @foreach($petties as $petty)
            <?php
                $t100rb += $petty->t100rb;
                $t50rb += $petty->t50rb;
                $t20rb += $petty->t20rb;
                $t10rb += $petty->t10rb;
                $t5rb += $petty->t5rb;
                $t2rb += $petty->t2rb;
                $t1rb += $petty->t1rb;
                $t500r += $petty->t500r;
                $t200r += $petty->t200r;
                $t100r += $petty->t100r;
                $total += $petty->total;
            ?>
            @endforeach
            <tr>
                <td style="text-align: right;">{{ $t100rb }}</td>
                <td style="text-align: right;">{{ $t50rb }}</td>
                <td style="text-align: right;">{{ $t20rb }}</td>
                <td style="text-align: right;">{{ $t10rb }}</td>
                <td style="text-align: right;">{{ $t5rb }}</td>
                <td style="text-align: right;">{{ $t2rb }}</td>
                <td style="text-align: right;">{{ $t1rb }}</td>
                <td style="text-align: right;">{{ $t500r }}</td>
                <td style="text-align: right;">{{ $t200r }}</td>
                <td style="text-align: right;">{{ $t100r }}</td>
                <td style="text-align: right;"></td>
                <td></td>
            </tr>
            <tr>
                <td style="text-align: right;">{{ number_format($t100rb*100000) }}</td>
                <td style="text-align: right;">{{ number_format($t50rb*50000) }}</td>
                <td style="text-align: right;">{{ number_format($t20rb*20000) }}</td>
                <td style="text-align: right;">{{ number_format($t10rb*10000) }}</td>
                <td style="text-align: right;">{{ number_format($t5rb*5000) }}</td>
                <td style="text-align: right;">{{ number_format($t2rb*2000) }}</td>
                <td style="text-align: right;">{{ number_format($t1rb*1000) }}</td>
                <td style="text-align: right;">{{ number_format($t500r*500) }}</td>
                <td style="text-align: right;">{{ number_format($t200r*200) }}</td>
                <td style="text-align: right;">{{ number_format($t100r*100) }}</td>
                <td style="text-align: right;color:#00f;"><b>{{ number_format($total) }}</b></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="12">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="12">
                    <div style="font-weight: bold;">Kas Bon tanggal {{ $_GET['date'] }}</div>
                </td>
            </tr>
            <tr>
                <td colspan="10">Total Kasbon</td>
                <td style="text-align: right;color:#00f;"><b>{{ number_format($daily_iou) }}</b></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="12">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="7"></td>
                <td colspan="3"><b>Hasil Akhir</b></td>
                <td style="text-align: right;color:#f00;"><b>{{ number_format($total_saldo-$daily_iou-$total) }}</b></td>
                <td></td>
            </tr>
    </tbody>
</table>