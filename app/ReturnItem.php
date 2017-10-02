<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ReturnItem extends Model
{
    protected $table = "return_item";

    public function part(){
    	return $this->belongsTo('App\PartNo');
    }
}
