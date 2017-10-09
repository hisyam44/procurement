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
    <div class="row">
         <div class="col-md-12">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/user/password') }}">
                    {{ csrf_field() }}
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Password</label>
                        <div class="col-md-6">
                            <input type="password" name="password" class="form-control" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">New Password</label>
                        <div class="col-md-6">
                            <input type="password" name="new_password" class="form-control" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Confirm New Password</label>
                        <div class="col-md-6">
                            <input type="password" name="confirm_password" class="form-control" id="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            <button type="submit" class="btn btn-primary">
                                Change
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection