<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Itemcode2 extends Model
{
    protected $table = "itemcode2";

    public function itemcode(){
    	return $this->belongsTo('App\Itemcode','itemcode_id');
    }

    public function itemcode3(){
    	return $this->hasMany('App\Itemcode3','itemcode2_id');
    }
}
