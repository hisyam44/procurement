<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cost extends Model
{
    public function transaksi(){
    	return $this->belongsTo('App\Transaksi');
    }

    public function costcode(){
    	return $this->belongsTo('App\Costcode');
    }

    public function costcodelv4(){
    	return $this->belongsTo('App\CostcodeLv4','costcode_lv4_id');
    }

    public function description(){
    	return $this->belongsTo('App\ConstructDescript','construction_description_id');
    }

}
