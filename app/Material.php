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

   	public function operator(){
        return $this->belongsTo('\App\User','operator_id');
    }

    public function hod(){
        return $this->belongsTo('\App\User','hod_id');
    }

    public function admin(){
        return $this->belongsTo('\App\User','admin_id');
    }
   	
}
