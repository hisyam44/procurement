@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
         <div class="col-md-12">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/unit/'.$unit->id) }}">
                    {{ csrf_field() }}
                    <input type="text" name="_method" value="put" hidden>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Unit Code</label>
                        <div class="col-md-6">
                            <input type="text" name="code" class="form-control" value="{{ $unit->code }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Date Commissioning @Site</label>
                        <div class="col-md-6">
                            <input type="text" name="date_commissioning" class="form-control" value="{{ $unit->date_commissioning }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">SMU / KM</label>
                        <div class="col-md-6">
                            <input type="text" name="smu_km" class="form-control" value="{{ $unit->smu_km }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">GPS</label>
                        <div class="col-md-6">
                            <input type="text" name="gps" class="form-control" value="{{ $unit->gps }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Unit Type</label>
                        <div class="col-md-6">
                            <input type="text" name="type" class="form-control" value="{{ $unit->type }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Make</label>
                        <div class="col-md-6">
                            <input type="text" name="make" class="form-control" value="{{ $unit->make }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Model</label>
                        <div class="col-md-6">
                            <input type="text" name="model" class="form-control" value="{{ $unit->model }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Registration No</label>
                        <div class="col-md-6">
                            <input type="text" name="no_registration" class="form-control" value="{{ $unit->no_registration }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">STNK Expired Date</label>
                        <div class="col-md-6">
                            <input type="text" name="stnk_ex" class="form-control" value="{{ $unit->stnk_ex }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">KIR Expired Date</label>
                        <div class="col-md-6">
                            <input type="text" name="kir_ex" class="form-control" value="{{ $unit->kir_ex }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Serial No</label>
                        <div class="col-md-6">
                            <input type="text" name="serial_no" class="form-control" value="{{ $unit->serial_no }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Engine No</label>
                        <div class="col-md-6">
                            <input type="text" name="engine_no" class="form-control" value="{{ $unit->engine_no }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Power Rating</label>
                        <div class="col-md-6">
                            <input type="text" name="power_rating" class="form-control" value="{{ $unit->power_rating }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Capacity</label>
                        <div class="col-md-6">
                            <input type="text" name="capacity" class="form-control" value="{{ $unit->capacity }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Operating Weight</label>
                        <div class="col-md-6">
                            <input type="text" name="operation_weight" class="form-control" value="{{ $unit->operation_weight }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">YOM</label>
                        <div class="col-md-6">
                            <input type="text" name="yom" class="form-control" value="{{ $unit->yom }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Remarks</label>
                        <div class="col-md-6">
                            <input type="text" name="remarks" class="form-control" value="{{ $unit->remarks }}" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            <button type="submit" class="btn btn-primary">
                                Edit
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
