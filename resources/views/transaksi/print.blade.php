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
    			<h2 style="text-align: center;">Laporan Transaksi per tanggal {{ \Carbon\Carbon::now()->format('d-M-Y') }}</h2>
    		</td>
    	</tr>
        <tr style="font-weight: bold;text-align: center;">
            <!-- <td>No</td>
            <td>Nama Project</td>
            <td>Kode Project</td>
            <td>Tipe</td>
            <td>Rekening</td>
            <td>Kepada</td>
            <td>Jumlah Total</td>
            <td>Direksi</td>
            <td>Kepala Bagian</td>
            <td>Kasir</td>
            <td>Penerima</td> -->
            <td>No Voucher</td>
            <td>Tanggal</td>
            <td>Category Accounting</td>
            <td>Cost Type</td>
            <td>Cost Code</td>
            <td>Category Construction</td>
            <td>Details</td>
            <td>Debit</td>
            <td>Kredit</td>
            <td>Saldo</td>
            <td>Ket</td>
        </tr>
    </thead>
    <tbody>
        <?php
            $total_saldo = 0;
            $total_debet = 0;
            $total_credit = 0;
        ?>
        @foreach($transaksi as $index => $trans)
        <div id="transaksi">
            <!-- <tr>
                <td>{{ sprintf('%06d',$trans->id) }}</td>
                <td>{{ $trans->project_name }}</td>
                <td>{{ $trans->project_code }}</td>
                <td>{{ strtoupper($trans->type) }}</td>
                <td>{{ $trans->receiver_rekening }}</td>
                <td>{{ $trans->receiver }}</td>
                <td>Rp. {{ $trans->amount_total }}</td>
                <td>{{ $trans->direksi }}</td>
                <td>{{ $trans->kepala_bagian }}</td>
                <td>{{ $trans->kasir }}</td>
                <td>{{ $trans->penerima }}</td>
            </tr> -->
            @foreach($trans->costs as $index => $cost)
                    <tr>
                        <td>{{ sprintf('%06d',$trans->id) }}</td>
                        <td>{{ $trans->created_at->format('d-M-Y') }}</td>
                        <td>{{ $trans->accounting->name }}</td>
                        <td>{{ $cost->cost_type }}</td>
                        <td>{{ $cost->costcode->kode.".".$cost->costcodelv4->id." - ".$cost->costcode->name." ".$cost->costcodelv4->name }}</td>
                        <td>{{ $trans->construction->name }}</td>
                        <td>{{ $cost->description->name }}</td>
                        <td>{{ $cost->type=="debet"?$cost->amount:'' }}</td>
                        <td>{{ $cost->type=="credit"?$cost->amount:'' }}</td>
                        <td>{{ $cost->saldo }}</td>
                        <td>{{ $trans->keterangan }}</td>
                        <?php
                            $total_saldo = $cost->saldo;
                            $cost->type=="debet"?$total_debet+=$cost->amount:$total_credit+=$cost->amount;
                        ?>
                    </tr>
            @endforeach
        </div>
        @endforeach
            <tr>
                <td colspan="7">Total</td>
                <td>{{ $total_debet }}</td>
                <td>{{ $total_credit }}</td>
                <td>{{ $total_saldo }}</td>
                <td></td>
            </tr>
    </tbody>
</table>