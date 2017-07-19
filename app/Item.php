<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    protected $fillable = ['item_no','part_no','description','uom','weight','shelf_life','dimension','warranty','remark'];
    public function requests(){
    	return $this->hasMany('\App\Request');
    }
}
