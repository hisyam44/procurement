<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Accounting extends Model
{
   protected $table = "accounting_category";

   public function transaksi(){
   	return $this->hasMany('\App\Transaksi');
   }
}
