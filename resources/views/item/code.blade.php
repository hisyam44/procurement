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
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="modal_title">New Category</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/itemcode') }}">
                    {{ csrf_field() }}
                        <input type="text" name="code_type" id="code_type" hidden>
                        <input type="text" name="code_id" id="code_id" hidden>
                        <div class="form-group">
                            <label for="code" class="col-md-4 control-label">Item Code Name</label>
                            <div class="col-md-6">
                                <input type="text" name="name" class="form-control" id="name" required>
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
    @foreach($itemcodes as $item)
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div id="type_code" class="hidden">1</div>
                            <div id="id_code" class="hidden">{{ $item->id }}</div>
                            <div class="col-md-6" id="code_name">
                                {{ $item->name }}
                            </div>
                            <div class="col-md-6">
                                <div class="pull-right">
                                    <a class="btn btn-default" data-toggle="modal" data-target="#myModal" onclick="AddCode(this)"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a class="btn btn-default" onclick="ShowDetails(this)"><span class="glyphicon glyphicon-list"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row details panel-body">
                        @foreach($item->itemcode2 as $item2)
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div id="type_code" class="hidden">2</div>
                                        <div id="id_code" class="hidden">{{ $item2->id }}</div>
                                        <div class="col-md-6" id="code_name">
                                            {{ $item2->name }}
                                        </div>
                                        <div class="col-md-6">
                                            <div class="pull-right">
                                                <a class="btn btn-default" data-toggle="modal" data-target="#myModal" onclick="AddCode(this)"><span class="glyphicon glyphicon-plus"></span></a>
                                                <a class="btn btn-default" onclick="ShowDetails(this)"><span class="glyphicon glyphicon-list"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row details">
                                        @foreach($item2->itemcode3 as $item3)
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div id="type_code" class="hidden">3</div>
                                                    <div id="id_code" class="hidden">{{ $item3->id }}</div>
                                                    <div class="col-md-6" id="code_name">
                                                        {{ $item3->name }}
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="pull-right">
                                                        
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                                </div>
                            </div>
                        @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>    
    @endforeach
    <script type="text/javascript">
        function AddCode(elem){
            var code_name = $(elem).parent().parent().parent();
            console.log($(code_name));
            $('#modal_title').text("Add to "+$(code_name).find('#code_name').html());
            $('#code_type').val($(code_name).find('#type_code').html());
            $('#code_id').val($(code_name).find('#id_code').html());
        }
    </script>
    <script type="text/javascript">
        $(".details").addClass("hidden");
        function ShowDetails(elem){
            var detailsItem = $(elem).parent().parent().parent();
            console.log(detailsItem);
            if($(detailsItem).next().hasClass("hidden")){
                $(detailsItem).next().removeClass("hidden");
            }else{
                $(detailsItem).next().addClass("hidden");
            }

        }
    </script>
            
</div>
@endsection
