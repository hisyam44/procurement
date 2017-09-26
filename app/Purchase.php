<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
	public function unit(){
		return $this->belongsTo('\App\Unit');
	}

    public function requests(){
    	return $this->hasMany('\App\Request');
    }

    public function orders(){
    	return $this->hasMany('\App\Order','purchase_id');
    }

}
