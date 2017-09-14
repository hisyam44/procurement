<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $table = "order_item";

    public function item(){
    	return $this->belongsto('App\PartNo');
    }

    public function order(){
    	return $this->belongsto('App\Order');
    }

}
