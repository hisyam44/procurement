<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
   	public function order(){
   		return $this->belongsTo('App\Order');
   	}

   	public function unit(){
   		return $this->belongsTo('App\Unit');
   	}

   	public function items(){
   		return $this->hasMany('App\MaterialItem');
   	}
}
