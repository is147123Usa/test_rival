<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sh_room extends Model
{
    use HasFactory;
    protected $table = "sh_items";
    protected $fillable = [
        'name','img',
        'item_desc','cat_id',
        'trader_id'
    ];
    public function cat(){
        return $this->belongsTo(Category::class);
    }
    public function trader(){
        return $this->belongsTo(Trader::class);
    }
}
