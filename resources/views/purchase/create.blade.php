@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/item') }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Date</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="date" class="form-control" name="part_no" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Unit Code</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Type</label>
                                <div class="col-md-6">
                                    <!-- <input id="part_no" type="text" class="form-control" name="part_no" required> -->
                                    <select class="form-control">
                                        <option>BD</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Cost</label>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">Rp. </span>
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">KM/HM</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">MOL</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
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
                                        <div class="col-md-2">
                                            <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Spare Part No..." required>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Component..." required>
                                        </div>
                                        <div class="col-md-4">
                                            <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Details..." required>
                                        </div>
                                        <div class="col-md-1">
                                            <input id="part_no" type="number" class="form-control" name="part_no" placeholder="QTY..." required>
                                        </div>
                                        <div class="col-md-2">
                                            <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Measurement..." required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-3">
                                            <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Model..." required>
                                        </div>
                                        <div class="col-md-3">
                                            <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Device Code..." required>
                                        </div>
                                        <div class="col-md-6">
                                            <textarea id="part_no" type="text" class="form-control" name="part_no" placeholder="Damage Description..." required></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <a class="btn btn-success pull-right" onclick="appendNewFormRequest()">Add New Request</a>
                        <script type="text/javascript">
                            function appendNewFormRequest(){
                                var formRequest = $('#formRequest');
                                $('<div class="panel"> <div class="panel-body"> <div class="row"> <div class="form-group"> <div class="col-md-2"> <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Spare Part No..." required> </div><div class="col-md-3"> <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Component..." required> </div><div class="col-md-4"> <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Details..." required> </div><div class="col-md-1"> <input id="part_no" type="number" class="form-control" name="part_no" placeholder="QTY..." required> </div><div class="col-md-2"> <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Measurement..." required> </div></div></div><div class="row"> <div class="form-group"> <div class="col-md-3"> <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Model..." required> </div><div class="col-md-3"> <input id="part_no" type="text" class="form-control" name="part_no" placeholder="Device Code..." required> </div><div class="col-md-6"> <textarea id="part_no" type="text" class="form-control" name="part_no" placeholder="Damage Description..." required></textarea> </div></div></div></div></div>').appendTo(formRequest);

                            }
                        </script>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Warehouse Manager</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Maintenance Manager</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Project Manager</label>
                                <div class="col-md-6">
                                    <input id="part_no" type="text" class="form-control" name="part_no" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Optional</label>
                                <div class="col-md-6">
                                    <!-- <input id="part_no" type="text" class="form-control" name="part_no" required> -->
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="part_no" class="col-md-4 control-label">Purpose</label>
                                <div class="col-md-6">
                                    <textarea id="part_no" type="text" class="form-control" name="part_no" required></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2 col-md-offset-10">
                            <button type="submit" class="btn btn-primary">
                                <i class="fa fa-btn fa-user"></i> POST
                            </button>
                        </div>
                    </div>
                </form>
            </div>
    </div>
</div>
@endsection
