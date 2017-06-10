@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
         <div class="col-md-10 col-md-offset-1">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/item') }}">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Item No</label>
                        <div class="col-md-6">
                            <div class="form-inline">
                                <select onChange="gantiCode()" class="form-control codetype" id="code1">
                                    <option value="1">IMP</option>
                                    <option value="2">LOC</option>
                                </select>
                                <select onChange="gantiCode()" class="form-control codetype" id="code2">
                                    <option value="0">Other</option>
                                    <option value="1">CG</option>
                                    <option value="2">SP</option>
                                    <option value="3">CN</option>
                                    <option value="4">FL</option>
                                    <option value="5">LU</option>
                                    <option value="6">CM</option>
                                    <option value="7">OE</option>
                                    <option value="8">TL</option>
                                </select>
                                <select onChange="gantiCode()" class="form-control codetype" id="code3">
                                    <option value="0">Other</option>
                                    <option value="1">GN</option>
                                    <option value="2">OE</option>
                                    <option value="3">FB</option>
                                    <option value="4">US</option>
                                    <option value="5">RF</option>
                                </select>
                                <select onChange="gantiCode()" class="form-control codetype" id="code4">
                                    <option value="0">Other</option>
                                    <option value="1">GN</option>
                                    <option value="2">OE</option>
                                    <option value="3">FB</option>
                                    <option value="4">US</option>
                                    <option value="5">RF</option>
                                </select>
                                <select onChange="gantiCode()" class="form-control codetype" id="code5">
                                    <option value="0">Other</option>
                                    <option value="1">GN</option>
                                    <option value="2">OE</option>
                                    <option value="3">FB</option>
                                    <option value="4">US</option>
                                    <option value="5">RF</option>
                                </select>
                            </div>
                            <script type="text/javascript">
                                function gantiCode(){
                                    var code1 = $('#code1').val();
                                    var code2 = $('#code2').val();
                                    var code3 = $('#code3').val();
                                    var code4 = $('#code4').val();
                                    var code5 = $('#code5').val();
                                    var code = code1+code2+code3+code4+code5;
                                    $('#item_no').val(code);
                                    $('#text_item_no').text(code);
                                }
                            </script>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">&nbsp;</label>
                        <div class="col-md-6">
                            <input type="text" name="item_no" id="item_no" value="10000" hidden>
                            <p class="form-control-static" id="text_item_no">10000</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="part_no" class="col-md-4 control-label">Part No</label>
                        <div class="col-md-6">
                            <input id="part_no" type="text" class="form-control" name="part_no" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-md-4 control-label">Material Description</label>
                        <div class="col-md-6">
                            <input id="description" type="text" class="form-control" name="description" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="uom" class="col-md-4 control-label">UOM</label>
                        <div class="col-md-6">
                            <input id="uom" type="text" class="form-control" name="uom" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="specification" class="col-md-4 control-label">Specifications</label>
                        <div class="col-md-6">
                            <textarea id="specification" type="text" class="form-control" name="specification" required></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            <button type="submit" class="btn btn-primary">
                                <i class="fa fa-btn fa-user"></i> Tambahkan
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
