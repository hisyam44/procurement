@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
         <div class="col-md-12">
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST" action="{{ url('/supplier/'.$supplier->id) }}">
                    {{ csrf_field() }}
                    <input type="text" value="put" name="_method" hidden>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Supplier ID</label>
                        <div class="col-md-6">
                            <input type="text" name="no" class="form-control" id="no" value="{{ $supplier->no }}" readonly required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Supplier Name</label>
                        <div class="col-md-6">
                            <input type="text" name="name" class="form-control" id="name" value="{{ $supplier->name }}" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Type</label>
                        <div class="col-md-6">
                            <select name="type" class="form-control" id="type" required>
                                <option>{{ $supplier->type }}</option>
                                <option>Pers Perorangan</option>
                                <option>Perseroan Komanditer(CV)</option>
                                <option>Firma(FA)</option>
                                <option>Pers Terbatas Negara</option>
                                <option>Pers Negara Umum</option>
                                <option>PMA</option>
                                <option>PMDN</option>
                                <option>Persekutuan Pedeta</option>
                                <option>Perusahaan Umum</option>
                                <option>Perusahaan Jawatan</option>
                                <option>PT</option>
                                <option>PT TBK</option>
                                <option>UD</option>
                                <option>Yayasan</option>
                                <option>Koperasi</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Address</label>
                        <div class="col-md-6">
                            <textarea class="form-control" name="address" id="address" rows="3" required>{{ $supplier->address }}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Phone</label>
                        <div class="col-md-6">
                            <input type="text" name="phone" class="form-control" id="phone" value="{{ $supplier->phone }}" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Email</label>
                        <div class="col-md-6">
                            <input type="text" name="email" class="form-control" id="email" value="{{ $supplier->email }}" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Contact Name</label>
                        <div class="col-md-6">
                            <input type="text" name="attn" class="form-control" id="attn" value="{{ $supplier->attn }}" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Contact Phone</label>
                        <div class="col-md-6">
                            <input type="text" name="contact" class="form-control" id="contact" value="{{ $supplier->contact }}" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="code" class="col-md-4 control-label">Other Informations</label>
                        <div class="col-md-6">
                            <textarea class="form-control" name="description" id="description" rows="3" required>{{ $supplier->description }}</textarea>
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
