<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    protected $table = "drivers";
    protected $fillable = [
        'img','name',
        'item_desc','trader_id'
        
];
public function trader()
{
  // return $this->belongsTo('App\Models\Country');
  return $this->belongsTo(Trader::class);
}
}
