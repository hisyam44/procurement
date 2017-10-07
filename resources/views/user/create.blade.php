@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
         <div class="col-md-12">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/user') }}">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Name</label>
                        <div class="col-md-6">
                            <input type="text" name="name" class="form-control" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Type</label>
                        <div class="col-md-6">
                            <select class="form-control" name="role" required>
                                <option>Admin</option>
                                <option>HoD</option>
                                <option>Supervisior</option>
                                <option>Operator</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Department</label>
                        <div class="col-md-6">
                            <select class="form-control" name="department" required>
                                <option>None</option>
                                <option>Engineering</option>
                                <option>Logistic</option>
                                <option>QC</option>
                                <option>Survey</option>
                                <option>HRD&GA</option>
                                <option>HSE</option>
                                <option>Finance</option>
                                <option>Planner</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Email</label>
                        <div class="col-md-6">
                            <input type="email" name="email" class="form-control" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Password</label>
                        <div class="col-md-6">
                            <input type="password" name="password" class="form-control" id="name" required>
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