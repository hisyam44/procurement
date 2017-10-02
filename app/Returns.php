<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Returns extends Model
{
    protected $table = "returns";

    public function unit(){
    	return $this->belongsTo('App\Unit');
    }

    public function items(){
    	return $this->hasMany('App\ReturnItem','return_id');
    }
}
