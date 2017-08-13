<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cost extends Model
{
    public function transaksi(){
    	return $this->belongsTo('App\Transaksi');
    }
}
