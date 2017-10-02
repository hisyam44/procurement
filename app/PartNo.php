<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PartNo extends Model
{
    protected $table = "item_part_no";

    public function item(){
    	return $this->belongsTo('App\Item');
    }

    public function materials(){
    	return $this->hasMany('App\MaterialItem','partno_id');
    }

    public function issues(){
    	return $this->hasMany('App\IssueItem','part_id');
    }

    public function returns(){
        return $this->hasMany('App\ReturnItem','part_id');
    }

}
