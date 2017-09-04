@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
    <form class="form-horizontal" role="form">
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.100.000 X </label>
                                    <div class="col-md-4">
                                        <input value="100000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.50.000 X </label>
                                    <div class="col-md-4">
                                        <input value="50000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.20.000 X </label>
                                    <div class="col-md-4">
                                        <input value="20000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.10.000 X </label>
                                    <div class="col-md-4">
                                        <input value="10000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.5000 X </label>
                                    <div class="col-md-4">
                                        <input value="5000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.2000 X </label>
                                    <div class="col-md-4">
                                        <input value="2000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.1000 X </label>
                                    <div class="col-md-4">
                                        <input value="1000" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.500 X </label>
                                    <div class="col-md-4">
                                        <input value="500" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.200 X </label>
                                    <div class="col-md-4">
                                        <input value="200" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-2 control-label">Rp.100 X </label>
                                    <div class="col-md-4">
                                        <input value="100" hidden></input>
                                        <input type="number" class="form-control" onkeyup="ChangeValue(this)"></input>
                                    </div>
                                    <span>Rp. </span><span class="hasil" id="hasil">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
            				<div class="col-md-9 col-md-offset-2">
                                <div class="form-group">
                                    <label for="type_transaksi" class="col-md-6 control-label">Total Harian</label>
                                    <label class="control-label" id="total_hasil"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Approval</label>
                                <div class="col-md-6"></div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Admin</label>
                                <div class="col-md-6">
                                    <input id="maintenance_manager" type="text" class="form-control" name="maintenance_manager" value="Chinna Babu" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Approval 1</label>
                                <div class="col-md-6">
                                    <input id="project_manager" type="text" class="form-control" name="project_manager" value="Pak Veera" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Approval 2</label>
                                <div class="col-md-6">
                                    <input id="project_manager" type="text" class="form-control" name="project_manager" value="Direksi" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                        </div>
                        </div>
                    </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-right">
                        <i class="fa fa-btn fa-user"></i> POST
                    </button>
            </div>
            <script type="text/javascript">
            	function ChangeValue(elem){
            		var elem = $(elem);
            		var satuan = elem.prev().val();
            		var num = elem.val();
            		var hasil = parseInt(satuan)*parseInt(num);
            		var hasiltext = elem.parent().parent();
            		$(hasiltext).find('#hasil').html(hasil);
            		var hasilall = $('.hasil');
            		var total = 0;
            		console.log(hasilall);
            		for(var i=0;i<hasilall.length;i++){
            			var number = $(hasilall[i]).html();
            			console.log(number);
            			total = total+parseInt(number);
            		}
            		console.log(total);
            		$('#total_hasil').html("Rp."+total);
            		//console.log(hasiltext);
            	}
            </script>
</form>s
</div>
@endsection