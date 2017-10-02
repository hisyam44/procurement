<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
	protected $fillable = ['code','date_commissioning','smu_km','gps','type','make','model','no_registration','stnk_ex','kir_ex','serial_no','engine_no','power_rating','capacity','operation_weight','yom','remarks'];

    public function purchases(){
    	return $this->hasMany('\App\Purchase');
    }
}
