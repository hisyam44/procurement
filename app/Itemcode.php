<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Itemcode extends Model
{
    public function itemcode2(){
    	return $this->hasMany('App\Itemcode2','itemcode_id');
    }
}
