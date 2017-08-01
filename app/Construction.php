<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Construction extends Model
{
    protected $table = "construction_category";

    public function transaksi(){
    	return $this->hasMany('App\Transaksi');
    }
}
