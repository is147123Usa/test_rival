<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation_item extends Model
{
    use HasFactory;
    protected $table = "qutation_items";
    protected $fillable = ['price','img','item_desc','note','qutition_id','qutation_order_item_id'];
    public function qutition()
    { 
    return $this->belongsTo(Qutation::class);
    }
    public function qutation_order_item()
    { 
    return $this->belongsTo(Qutation_order_item::class);
    }

    
}
