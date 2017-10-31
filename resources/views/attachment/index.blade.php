@extends('layouts.app')

@section('content')
<div class="container">
	<div class="row">
        <div class="col-md-12">
            @if(Session::has('message'))
                <div class="alert alert-success">
                  <strong>Success!</strong> {{ Session::get('message') }}
                </div>
            @endif
        </div>
    </div>
<div id="attachmentInput">
<div class="row">
	<div class="panel panel-default">
		<div class="panel-body">
			<form class="form" method="post" enctype="multipart/form-data" action="{{ url('transaksi/'.Request::route('id').'/attachment') }}">
				{{ csrf_field() }}
				<div class="row">
					<div class="col-md-10">
						<div class="form-group">
							<label class="col-md-6 control-label">Attachment (Gambar : */JPG/JPEG)</label>
							<div class="col-md-6">
								<input type="file" name="filename[]" class="form-control" accept="image/*" multiple required>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<button class="btn btn-success">Tambahkan</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
	$('#attachmentInput').hide();
</script>
@if(count($attachments) == 0)
    <div class="jumbotron" id="infoText">
        <p class="lead">Transaksi ini belum memiliki Lampiran Bukti (Attachment).</p>
        <p class="lead">
            <a class="btn btn-success" onclick="tambahAttachment()">Tambahkan Sekarang.</a>
            <a class="btn btn-default" href="{{ url('transaksi/'.$attachments->type.'/create') }}">Nanti</a>
        </p>
    </div>
@else
	<!-- <div class="">Lampiran Bukti (Attachment) Transaksi {{ sprintf('%06d',$attachments[0]['transaksi_id']) }}</div> -->
	<div class="row">
		<div class="panel-body">
			<a class="btn btn-success" href="{{ Request::url().'?print=true' }}"><span class="glyphicon glyphicon-print"></span> Cetak Lampiran(Attachments)</a>
			<button class="btn btn-success pull-right" onclick="showInput()">Tambahkan Lampiran Baru</button>
		</div>
	</div>
	<div class="row">
	<div class="panel panel-default">
		<div class="panel-body">
			@foreach($attachments as $index => $attachment)
				<div class="col-md-3">
					<div class="image">
						<div class="image-cap">
							<div class="bg-trans"></div>
							<div class="action">
								<form method="post" action="{{ url('attachment/'.$attachment->id) }}">
                                    {{ csrf_field() }}
                                    <input type="text" name="_method" value="delete" hidden>
                                    <input type="submit" class="btn btn-danger" value="Delete">
                                </form>
							</div>
						</div>
						<img src="{{ url($attachment->filename) }}" class="img-responsive">
					</div>
				</div>
			@endforeach
		</div>
	</div>
	</div>
@endif
	<script type="text/javascript">
		function showInput(){
			$('#attachmentInput').show('slow');
		}
		function tambahAttachment(){
			$('#infoText').remove();
			showInput();
		}
	</script>
</div>
@endsection
