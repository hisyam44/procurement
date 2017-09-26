<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function supplier(){
    	return $this->belongsTo('App\Supplier');
    }
    public function orderitem(){
    	return $this->hasMany('App\OrderItem');
    }
    public function purchase(){
    	return $this->belongsTo('App\Purchase');
    }
    public function materials(){
    	return $this->hasMany('App\Material');
    }
}
