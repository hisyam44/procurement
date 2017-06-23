<style type="text/css">
	.page-break{
		page-break-after: always;
	}
</style>
<h1>Attachments Transaksi Nomor {{ sprintf('%06d',Request::route('id')) }}</h1>
@foreach($attachments as $index => $attachment)
	<div class="page-break"></div>	
	<img src="{{ $attachment['filename'] }}" style="width: 100%;height: auto;">
	<div>{{ $index+1 }}</div>
@endforeach
