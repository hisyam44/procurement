<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ConstructDescript extends Model
{
    protected $table = "construction_description";

    public function construction(){
    	return $this->belongsTo('App\Construction');
    }

    public function costs(){
    	return $this->hasMany('App\Cost','construction_description_id');
    }

}
