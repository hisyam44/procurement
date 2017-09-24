<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IssueItem extends Model
{
	protected $table = "issue_item";

    public function part(){
    	return $this->belongsTo('App\PartNo');
    }
}
