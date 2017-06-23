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
            <td>No</td>
            <td>Nama Project</td>
            <td>Kode Project</td>
            <td>Tipe</td>
            <td>Rekening</td>
            <td>Kepada</td>
            <td>Jumlah Total</td>
            <td>Direksi</td>
            <td>Kepala Bagian</td>
            <td>Kasir</td>
            <td>Penerima</td>
        </tr>
    </thead>
    <tbody>
        @foreach($transaksi as $index => $trans)
        <div id="transaksi">
            <tr>
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
            </tr>
            @foreach($trans->costs as $index => $cost)
                    <tr style="background: #eee;">
                        <td></td>
                        <td>{{ $trans->created_at }}</td>
                        <td>{{ strtoupper($cost->type) }}</td>
                        <td colspan="2">Rekening Kode : {{ $cost->rekening_code }}</td>
                        <td colspan="2">Cost Code : {{ $cost->code }}</td>
                        <td>Rp.{{ $cost->amount }}</td>
                        <td colspan="3">{{ $cost->description }}</td>
                    </tr>
            @endforeach
        </div>
        @endforeach
    </tbody>
</table>