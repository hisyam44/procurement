<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Itemcode3 extends Model
{
    protected $table = "itemcode3";

    public function itemcode2(){
    	return $this->belongsTo('App\Itemcode2','itemcode2_id');
    }
}
