<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    protected $table = "transaksi";

    public function costs(){
    	return $this->hasMany('\App\Cost');
    }
}
