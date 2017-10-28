@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/purchase') }}">
                    {{ csrf_field() }}
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Department</label>
                                <div class="col-md-6">
                                    <!-- <input id="part_no" type="text" class="form-control" name="part_no" required> -->
                                    <select id="department" class="form-control" name="department" onchange="checkDepartment()">
                                        <option>HR and GA</option>
                                        <option>Plant</option>
                                        <option>Production</option>
                                        <option>Safety</option>
                                        <option>Engineering</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Unit Code</label>
                                <div class="col-md-6">
                                    <div id="unitinput"> 
                                        <input id="unit_code" type="text" class="form-control" name="unit_code">
                                        <input id="unit_id" type="text" name="unit_id" value="0" hidden required>
                                    </div>
                                    <label class="checkbox-inline">
                                      <input type="checkbox" id="unitcheck" onClick="showUnit()"> Set Unit Code
                                    </label>
                                    <script type="text/javascript">
                                        var unit_id = $('#unit_id').val();
                                        var unit_check = $('#unitcheck')
                                        var show_unit = false;
                                        var unitinput = $('#unitinput');
                                        
                                        if(unit_id == '0'){
                                            show_unit = false;
                                            unit_check.attr('checked');
                                            unitShow();
                                        }else{
                                            show_unit = true;
                                            unit_check.attr('checked','checked');
                                            unitShow();
                                        }
                                        function showUnit(){
                                            show_unit = !show_unit;
                                            unitShow();
                                        }
                                        function unitShow(){
                                            if(show_unit){
                                                unitinput.show();
                                            }else{
                                                unitinput.hide();
                                                $('#unit_id').val(0);
                                            }
                                        }
                                    </script>
                                </div>
                                    <script type="text/javascript">
                                        $("#unit_code").autocomplete({
                                            source: function(request,response){
                                                console.log(request.term);
                                                $.ajax({
                                                    url: "{{ url('/unit/completion') }}",
                                                    dataType: "json",
                                                    data: {
                                                        term: request.term
                                                    },
                                                    success: function(data){
                                                        console.log(data);
                                                        response(data);
                                                    }
                                                });
                                            },
                                            minLength: 2,
                                            select: function(event,ui){
                                                $("#unit_id").val(ui.item.id);
                                            }
                                        });
                                    </script>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Date</label>
                                <div class="col-md-6">
                                    <input id="created_at" type="text" class="form-control" name="created_at" required>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                        $('#created_at').datetimepicker({
                                            format: 'YYYY-MM-DD',
                                            defaultDate: new Date()
                                        });
                                    });
                                </script>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Type</label>
                                <div class="col-md-6">
                                    <!-- <input id="part_no" type="text" class="form-control" name="part_no" required> -->
                                    <select class="form-control" name="type">
                                        <option>BD</option>
                                        <option>PM</option>
                                        <option>BL</option>
                                        <option>OH</option>
                                        <option>GN</option>
                                    </select>
                                </div>
                            </div>
                           <!--  <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Cost</label>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">Rp. </span>
                                        <input id="cost" type="text" class="form-control" name="cost" required>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">KM/HM</label>
                                <div class="col-md-6">
                                    <input id="km_hm" type="text" class="form-control" name="km_hm" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">MOL</label>
                                <div class="col-md-6">
                                    <input id="mol" type="text" name="mol" hidden required>
                                    <div class="input-group">
                                        <input id="mol_num" type="text" class="form-control" onkeyup="changeMolValue()" required>
                                        <span class="input-group-addon">/</span>
                                        <input id="mol_date" type="text" class="form-control" onchange="changeMolValue()" required>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function () {
                                        $('#mol_date').datetimepicker({
                                            format: 'MM-YYYY',
                                            defaultDate: new Date()
                                        });
                                        $("#mol_date").on("dp.change", function (e) {
                                            changeMolValue();
                                        });
                                    });
                                    function changeMolValue(){
                                        var number = $('#mol_num').val();
                                        var date = $('#mol_date').val();
                                        $('#mol').val(number+"/"+date);
                                    }
                                </script>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <div id="formRequest">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-3">
                                            <input id="no" type="text" class="form-control" placeholder="Part No..." onfocus="autoComplete(this)" required>
                                            <input id="item_id" type="text" name="item_id[]" required hidden>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="component" type="text" class="form-control" name="component[]" placeholder="Component..." readonly required>
                                        </div>
                                        <div class="col-md-6">
                                            <input id="description" type="text" class="form-control" name="description[]" placeholder="Part Description..." readonly required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-1">
                                            <input id="qty" type="number" class="form-control" name="qty[]" placeholder="QTY..." required>
                                        </div>
                                        <div class="col-md-2">
                                            <input id="satuan" type="text" class="form-control" placeholder="UOM..." readonly required>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="model" type="text" class="form-control model" name="model[]" placeholder="Date of Requirement...">
                                        </div>
                                        <div class="col-md-6">
                                            <input id="damage_description" type="text" class="form-control" name="damage_description[]" placeholder="Remark..." required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <script type="text/javascript">
                            function autoComplete(elem){
                                $(elem).autocomplete({
                                    source: function(request,response){
                                        console.log(request.term);
                                        $.ajax({
                                            url: "{{ url('/item/completion') }}",
                                            dataType: "json",
                                            data: {
                                                term: request.term
                                            },
                                            success: function(data){
                                                console.log(data);
                                                response(data);
                                            }
                                        });
                                    },
                                    minLength: 2,
                                    select: function(event,ui){
                                        $(this).next().val(ui.item.id);
                                        var parentElem = $(this).parent().parent().parent().parent();
                                        $(parentElem).find('#satuan').val(ui.item.uom);
                                        $(parentElem).find('#component').val(ui.item.component);
                                        $(parentElem).find('#description').val(ui.item.description);
                                        console.log(parentElem);
                                    }
                                });
                            }
                        </script>
                        <div class="panel-body">
                            <a class="btn btn-success pull-right" onclick="appendNewFormRequest()">Add New Request</a>
                        </div>
                        <script type="text/javascript">
                            function deleteRequest(elem){
                                console.log($(elem).parent());
                                var panel = $(elem).parent().parent();
                                panel.remove();

                            }
                            function checkDepartment(val){
                                var val = $('#department').val();
                                /*if(val != "HR and GA"){
                                    $('.model').parent().show();
                                    //$('.device_code').parent().show();
                                }else{
                                    $('.model').parent().hide();    
                                    //$('.device_code').parent().hide();
                                }*/
                                $(function () {
                                    $('.model').datetimepicker({
                                        format: 'YYYY-MM-DD'
                                    });
                                });
                            }
                            checkDepartment();
                        </script>
                        <script type="text/javascript">
                            function appendNewFormRequest(){
                                var formRequest = $('#formRequest');
                                $('<div class="panel"> <div class="panel-body"> <div class="row"> <div class="form-group"> <div class="col-md-3"> <input id="no" type="text" class="form-control" placeholder="Part No..." onfocus="autoComplete(this)" required><input id="item_id" type="text" name="item_id[]" required hidden> </div><div class="col-md-3"> <input id="component" type="text" class="form-control" name="component[]" placeholder="Component..." readonly required> </div><div class="col-md-6"> <input id="description" type="text" class="form-control" name="description[]" placeholder="Part Description..." readonly required> </div></div></div><div class="row"> <div class="form-group"> <div class="col-md-1"> <input id="qty" type="number" class="form-control" name="qty[]" placeholder="QTY..." required> </div><div class="col-md-2"> <input id="satuan" type="text" class="form-control" placeholder="UOM..."  readonly required> </div><div class="col-md-3"> <input id="model" type="text" class="form-control model" name="model[]" placeholder="Date of Requirement..."> </div><div class="col-md-6"> <input id="damage_description" type="text" class="form-control" name="damage_description[]" placeholder="Remark..." required> </div></div></div><a class="btn btn-danger pull-right" onclick="deleteRequest(this)">delete</a> </div></div>').appendTo(formRequest);
                                checkDepartment();

                            }
                        </script>
                    </div>
                    <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Warehouse in Charge</label>
                                <div class="col-md-6">
                                    <input id="warehouse_manager" type="text" class="form-control" name="warehouse_manager" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Maintenance Manager</label>
                                <div class="col-md-6">
                                    <input id="maintenance_manager" type="text" class="form-control" name="maintenance_manager" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Project Manager</label>
                                <div class="col-md-6">
                                    <input id="project_manager" type="text" class="form-control" name="project_manager" value="Veera" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Purpose</label>
                                <div class="col-md-6">
                                    <textarea id="purpose" type="text" class="form-control" name="purpose" required></textarea>
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
                </form>
            </div>
    </div>
</div>
@endsection
