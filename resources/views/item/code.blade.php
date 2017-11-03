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
    <div class="modal fade" id="modalEdit" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="modal_edit_title">New Category</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/itemcode/edit') }}">
                    {{ csrf_field() }}
                        <input type="text" name="_method" value="put" hidden>
                        <input type="text" name="code_type" id="edit_code_type" hidden>
                        <input type="text" name="code_id" id="edit_code_id" hidden>
                        <div class="form-group">
                            <label for="code" class="col-md-4 control-label">Item Code Name</label>
                            <div class="col-md-6">
                                <input type="text" name="name" class="form-control" id="edit_code_name" required>
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
    <div class="modal fade" id="modalDelete" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="modal_delete_title">New Category</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/itemcode/del') }}">
                    {{ csrf_field() }}
                        <input type="text" name="_method" value="delete" hidden>
                        <input type="text" name="code_type" id="delete_code_type" hidden>
                        <input type="text" name="code_id" id="delete_code_id" hidden>
                        <div class="form-group">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-block btn-danger">
                                    Yes
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-body"> 
        <div class="row">
            <div id="type_code" class="hidden">0</div>
            <div id="id_code" class="hidden">0</div>
            <div class="col-md-6 hidden" id="code_name">Item Code</div>
            <div class="col-md-12">
                <div class="pull-right">
                    <a class="btn btn-primary" data-toggle="modal" data-target="#myModal" onclick="AddCode(this)">New Item Code</a>
                </div>
            </div>
        </div>
    </div>
    <?php 
        $d1 = 0;
    ?>
    @foreach($itemcodes as $item)
        <?php $d1++ ?>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <div class="row">
                            <div id="type_code" class="hidden">1</div>
                            <div id="id_code" class="hidden">{{ $item->id }}</div>
                            <div class="col-md-6" id="code_name">{{ $item->name }}</div>
                            <div class="col-md-6">
                                <div class="pull-right">
                                    <a class="btn" data-toggle="modal" data-target="#modalEdit" onclick="EditCode(this)"><span class="glyphicon glyphicon-edit"></span></a>
                                    <a class="btn" data-toggle="modal" data-target="#myModal" onclick="AddCode(this)"><span class="glyphicon glyphicon-plus"></span></a>
                                    <a class="btn" onclick="ShowDetails(this)"><span class="glyphicon glyphicon-list"></span></a>
                                    <a class="btn" data-toggle="modal" data-target="#modalDelete" onclick="DeleteCode(this)"><span class="glyphicon glyphicon-remove"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row details panel-body">
                        <?php
                            $d2 = 0;
                        ?>
                        @foreach($item->itemcode2 as $item2)
                            <?php $d2++ ?>
                            <div class="col-md-12">
                                <div class="panel panel-primary">
                                <div class="panel-body">
                                    <div class="row">
                                        <div id="type_code" class="hidden">2</div>
                                        <div id="id_code" class="hidden">{{ $item2->id }}</div>
                                        <div class="col-md-6" id="code_name">{{ $item2->name }}</div>
                                        <div class="col-md-6">
                                            <div class="pull-right">
                                                <a class="btn" data-toggle="modal" data-target="#modalEdit" onclick="EditCode(this)"><span class="glyphicon glyphicon-edit"></span></a>
                                                <a class="btn" data-toggle="modal" data-target="#myModal" onclick="AddCode(this)"><span class="glyphicon glyphicon-plus"></span></a>
                                                <a class="btn" onclick="ShowDetails(this)"><span class="glyphicon glyphicon-list"></span></a>
                                                <a class="btn" data-toggle="modal" data-target="#modalDelete" onclick="DeleteCode(this)"><span class="glyphicon glyphicon-remove"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row details panel-body">
                                        <?php $d3 = 0; ?>
                                        @foreach($item2->itemcode3 as $item3)
                                            <?php $d3++ ?>
                                            <div class="col-md-12">
                                            <div class="panel panel-primary">
                                                <div class="panel-body">
                                                <div class="row">
                                                    <div id="type_code" class="hidden">3</div>
                                                    <div id="id_code" class="hidden">{{ $item3->id }}</div>
                                                    <div class="hidden">{{ $d1.$d2.sprintf('%02d',$d3) }}</div>
                                                    <div class="col-md-6" id="code_name">{{ $item3->name }}</div>
                                                    <div class="col-md-6">
                                                        <div class="pull-right">
                                                            <a class="btn" data-toggle="modal" data-target="#modalEdit" onclick="EditCode(this)"><span class="glyphicon glyphicon-edit"></span></a>
                                                            <a class="btn" data-toggle="modal" data-target="#modalDelete" onclick="DeleteCode(this)"><span class="glyphicon glyphicon-remove"></span></a>
                                                        </div>
                                                    </div>
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
        function DeleteCode(elem){
            var code_name = $(elem).parent().parent().parent();
            console.log($(code_name));
            $('#modal_delete_title').text("Delete '"+$(code_name).find('#code_name').html()+"' ?");
            $('#delete_code_type').val($(code_name).find('#type_code').html());
            $('#delete_code_id').val($(code_name).find('#id_code').html());
        }
        function EditCode(elem){
            var code_name = $(elem).parent().parent().parent();
            console.log($(code_name));
            $('#modal_edit_title').text("Edit '"+$(code_name).find('#code_name').html()+"'");
            $('#edit_code_type').val($(code_name).find('#type_code').html());
            $('#edit_code_id').val($(code_name).find('#id_code').html());
            $('#edit_code_name').val($(code_name).find('#code_name').text());
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
