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
                                <select onChange="gantiCode2()" class="form-control codetype" id="code2">
                                    <option value="0">Other</option>
                                </select>
                                <select onChange="gantiCode3()" class="form-control codetype" id="code3">
                                    <option value="0">Other</option>
                                </select>
                                <select onChange="gantiCode4()" class="form-control codetype" id="code4">
                                    <option value="0">Other</option>
                                </select>
                            </div>
                            <script type="text/javascript">
                                var item_types = {
                                    'CG' : {'HE' : ['EX', 'DZ', 'GD', 'CM', 'PV'],
                                            'TK' : ['DT', 'FT', 'LT', 'WT', 'TT', 'AT'],
                                            'PT' : ['SC', 'AM', 'BP'],
                                            'CM' : ['AG', 'GT', 'FN', 'LT', 'DR', 'CP', 'BR']},
                                    'SP' : {'HE' : ['EX', 'DZ', 'GD', 'CM', 'PV'],
                                            'TK' : ['DT', 'AT'],
                                            'PT' : ['SC', 'AM', 'BP']},
                                    'CN' : {'FL' : ['IH', 'LH', 'PR'],
                                            'LU' : [],
                                            'CH' : ['CC', 'LC', 'OT'],
                                            'CL' : []},
                                    'OE' : {'FR' : [],
                                            'MI' : [],
                                            'EI' : [],
                                            'ST' : []},
                                    'TL' : {'HT' : [],
                                            'PT' : [],
                                            'ST' : [],
                                            'LT' : [],
                                            'PG' : []}
                                };
                                console.log(item_types);
                                var $el = $("#code2");
                                var num = 0;
                                $.each(item_types, function(key,value) {
                                    num++;
                                    $el.append($("<option></option>").attr("value", num).text(key));
                                });
                                function gantiCode(){
                                    var code1 = $('#code1').val();
                                    var code2 = $('#code2').val();
                                    var code3 = $('#code3').val();
                                    var code4 = $('#code4').val();
                                    var code = code1+code2+code3+code4;
                                    $('#item_no').val(code);
                                    $('#text_item_no').text(code);
                                }
                                function gantiCode2(){
                                    gantiCode();
                                    var code2 = $('#code2').find(":selected").text();
                                    console.log(item_types[code2]);
                                    var $el = $("#code3");
                                    $('#code3 option:gt(0)').remove();
                                    var num = 0;
                                    $.each(item_types[code2], function(key,value) {
                                        num++;
                                        $el.append($("<option></option>").attr("value", num).text(key));
                                    });
                                }
                                function gantiCode3(){
                                    gantiCode();
                                    var code2 = $('#code2').find(":selected").text();
                                    var code3 = $('#code3').find(":selected").text();
                                    console.log(item_types[code2][code3]);
                                    var $el = $("#code4");
                                    $('#code4 option:gt(0)').remove();
                                    var num = 0;
                                    $.each(item_types[code2][code3], function(key,value) {
                                        num++;
                                        $el.append($("<option></option>").attr("value", num).text(value));
                                    });
                                }
                                function gantiCode4(){
                                    gantiCode();
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
                        <label for="weight" class="col-md-4 control-label">Weight</label>
                        <div class="col-md-6">
                        <div class="input-group">
                            <input id="weight" type="text" class="form-control" name="weight" required>
                            <span class="input-group-addon">Kilogram</span>
                        </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="dimension" class="col-md-4 control-label">Dimension</label>
                        <div class="col-md-6">
                        <div class="input-group">
                            <input id="dimension[]" type="text" class="form-control" name="dimension[]" required>
                            <span class="input-group-addon">x</span>
                            <input id="dimension[]" type="text" class="form-control" name="dimension[]" required>
                            <span class="input-group-addon">Meter</span>
                        </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="shelf_life" class="col-md-4 control-label">Shelf Life</label>
                        <div class="col-md-6">
                        <div class="input-group">
                            <input id="shelf_life" type="text" class="form-control" name="shelf_life" required>
                            <span class="input-group-addon">th</span>
                        </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="uom" class="col-md-4 control-label">UOM</label>
                        <div class="col-md-6">
                            <input id="uom" type="text" class="form-control" name="uom" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="remark" class="col-md-4 control-label">Remark</label>
                        <div class="col-md-6">
                            <input id="remark" type="text" class="form-control" name="remark" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="warranty" class="col-md-4 control-label">Warranty</label>
                        <div class="col-md-6">
                            <input id="warranty" type="text" class="form-control" name="warranty" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-md-4 control-label">Material Description</label>
                        <div class="col-md-6">
                            <textarea id="description" type="text" class="form-control" name="description" required></textarea>
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
