@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
         <div class="col-md-12">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/item') }}">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <!-- <label for="code" class="col-md-4 control-label">Item No</label> -->
                        <div class="col-md-9 col-md-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                
                            <div class="form-inline">
                                <select onChange="gantiCode()" class="form-control codetype" id="code1">
                                    <option value="1">Import</option>
                                    <option value="2">Local</option>
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
                            </div>
                        </div>
                            <script type="text/javascript">
                                var item_types = {
                                    'CG (Capital Good)' : {'HE (Heavy Equipment)' : ['EX (Excavator)', 'DZ (Bulldozer)', 'GD (Motor Grader)', 'CM (Compactor/Vibro)', 'PV (Paver)'],
                                            'TK (Trucks)' : ['DT (Dump Truck)', 'FT (Fuel Truck)', 'LT (Lube Truck)', 'WT (Water Truck)', 'TT (Trailer)', 'AT (Articulated Truck)'],
                                            'PT (Plants)' : ['SC (Stone Crusher)', 'AM (Alphalt Mixing Plant)', 'BP (Concrete Batching Plant)'],
                                            'CM (Construction Material)' : ['AG (Aggregates)', 'GT (Geotextile)', 'FN (Fencing Material)', 'LT (Lighting Equipment)', 'DR (Drainage Material)', 'CP (Chemical & Paints)', 'BR (Barriers']},
                                    'SP (Spares)' : {'HE (Heavy Equipment)' : ['Ground Engaging Tools', 'Engine ', 'Work Equipment', 'Undercarriage', 'Electrical', 'Hydraulic System', 'Power Train', 'Tires', 'Transmission', 'Differential'],
                                            'TK (Trucks)' : ['Engine ', 'Tires', 'Electrical', 'Hydraulic System', 'Transmission', 'Differential', 'Attachments', 'Cabin', 'Chassis'],
                                            'PT (Plants)' : ['Electrical ', 'Conveyor System']},
                                    'CN (Consumable)' : {'FL (Fuel)' : ['IH (Industrial HSD)', 'LH (SPBU HSD)', 'PR (Premium)'],
                                            'LU (Lubes)' : [],
                                            'CH (Chemical)' : ['CC (Cleaning Chemical)', 'LC (Lab Chemical)', 'OT (Others)'],
                                            'CL (Cleaning Material)' : []},
                                    'OE (Office Equipment)' : {'FR (Furniture)' : [],
                                            'MI (Mechanical Installation)' : [],
                                            'EI (Electrical Installation)' : [],
                                            'ST (Stationary)' : []},
                                    'TL (Tools & Tackles)' : {'HT (Hand Tools)' : [],
                                            'PT (Power Tools)' : [],
                                            'ST (Special Tools)' : [],
                                            'LT (Lifting Tools)' : [],
                                            'PG (Personal Gadget)' : []},
                                    'CM (Construction Material)' : {'AG (Aggregate)' : [],
                                            'BT (Bitumen)' : [],
                                            'ST (Steel)' : [],
                                            'CT (Cement)' : []},
                                    'RP (Repairs)' : {}
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
                                    code4 = code4 == "10"?code4:"0"+code4;
                                    var code = code1+code2+code3+code4;
                                    $('#item_no').val(code);
                                    var item_last = $('#code4').find(":selected").text();
                                    if(item_last == "Other"){
                                        item_last = $('#code3').find(":selected").text();
                                    }
                                    $('#component').val(item_last);
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
                        <label for="code" class="col-md-4 control-label">Item Code</label>
                        <div class="col-md-6">
                            <input type="text" name="item_no" class="form-control" id="item_no" value="10000" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label"></label>
                        <div class="col-md-6">
                            <input type="text" name="component" id="component" value="Other" hidden required>
                        </div>
                    </div>
                    <div id="part_no">
                        <div class="form-group">
                            <label for="part_no" class="col-md-4 control-label">Part No</label>
                            <div class="col-md-5">
                                <input id="part_no" type="text" class="form-control" name="part_no[]" required>
                            </div>
                        </div>
                        
                    </div>
                    <div class="form-group">
                        <label for="part_no" class="col-md-4 control-label"></label>
                        <div class="col-md-6">
                            <a class="btn btn-success pull-right" onclick="newPartNo()"><span class="glyphicon glyphicon-plus"></span> Add Part No</a>
                        </div>
                    </div>
                    <script type="text/javascript">
                        function newPartNo(){
                            var part = $('#part_no');
                            $('<div class="form-group"><label for="part_no" class="col-md-4 control-label"></label><div class="col-md-5"><input id="part_no" type="text" class="form-control" name="part_no[]" required></div><div class="col-md-1"><div class="btn btn-danger" onclick="deletePartNo(this)"><span class="glyphicon glyphicon-remove"></span></div></div></div>').appendTo(part);
                        }
                        function deletePartNo(elem){
                            var partNo = $(elem).parent().parent();
                            partNo.remove();
                        }
                    </script>
                    <div class="form-group">
                        <label for="weight" class="col-md-4 control-label">Weight</label>
                        <div class="col-md-6">
                        <div class="input-group">
                            <input id="weight" type="text" name="weight" hidden required>
                            <input id="weight_value" type="text" onkeyup="changeWeightValue()" class="form-control" required>
                            <span class="input-group-addon"></span>
                            <select class="form-control" id="weight_uom" onchange="changeWeightValue()" required>
                                <option>Kg</option>
                                <option>gr</option>
                                <option>Ons</option>
                                <option>Mg</option>
                                <option>Lbs</option>
                            </select>
                                <script type="text/javascript">
                                    function changeWeightValue(){
                                        var number = $('#weight_value').val();
                                        var date = $('#weight_uom').val();
                                        $('#weight').val(number+" "+date);
                                    }
                                </script>
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
                            <span class="input-group-addon">x</span>
                            <input id="dimension[]" type="text" class="form-control" name="dimension[]" required>
                            <span class="input-group-addon"></span>
                            <select class="form-control" name="dimension[]" required>
                                <option>M</option>
                                <option>mm</option>
                                <option>feet</option>
                                <option>inch</option>
                                <option>cm</option>
                            </select>
                        </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="shelf_life" class="col-md-4 control-label">Shelf Life</label>
                        <div class="col-md-6">
                        <div class="input-group">
                            <input id="shelf_life" type="text" name="shelf_life" hidden required>
                            <input id="shelf_life_value" type="text" class="form-control" onkeyup="changeShelfLifeValue()" required>
                            <span class="input-group-addon"></span>
                            <select class="form-control" id="shelf_life_uom" onchange="changeShelfLifeValue()" required>
                                <option>Hours</option>
                                <option>Days</option>
                                <option>Months</option>
                                <option>Years</option>
                            </select>
                                <script type="text/javascript">
                                    function changeShelfLifeValue(){
                                        var number = $('#shelf_life_value').val();
                                        var date = $('#shelf_life_uom').val();
                                        $('#shelf_life').val(number+" "+date);
                                    }
                                </script>
                        </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="uom" class="col-md-4 control-label">UOM</label>
                        <div class="col-md-6">
                            <select class="form-control" id="uom" name="uom" required>
                                <option>Nos</option>
                                <option>Kg</option>
                                <option>g</option>
                                <option>MT</option>
                                <option>ltr</option>
                                <option>kl</option>
                                <option>ml</option>
                                <option>Sqm</option>
                                <option>m</option>
                                <option>Lot</option>
                                <option>Packet</option>
                                <option>Set</option>
                            </select>
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
                        <div class="input-group">
                            <input id="warranty" type="text" name="warranty" hidden required>
                            <input id="warranty_value" type="text" class="form-control" onkeyup="changeWarrantyValue()" required>
                            <span class="input-group-addon"></span>
                            <select class="form-control" id="warranty_uom" onchange="changeWarrantyValue()" required>
                                <option>Hours</option>
                                <option>Days</option>
                                <option>Months</option>
                                <option>Years</option>
                            </select>
                                <script type="text/javascript">
                                    function changeWarrantyValue(){
                                        var number = $('#warranty_value').val();
                                        var date = $('#warranty_uom').val();
                                        $('#warranty').val(number+" "+date);
                                    }
                                </script>
                        </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-md-4 control-label">Part Description</label>
                        <div class="col-md-6">
                            <textarea id="description" type="text" class="form-control" name="description" required></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            <button type="submit" class="btn btn-primary">
                                Add
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
