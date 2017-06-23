<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attachment extends Model
{
    public function transaksi(){
    	return $this->belongsTo('App\Transaksi');
    }
}
