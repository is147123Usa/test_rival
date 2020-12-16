<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation_order_item extends Model
{
    use HasFactory;
    protected $table = "qutation_order_items";
    protected $fillable = ['name','item_desc','qutation_order_id',];
    
}
