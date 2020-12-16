<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation extends Model
{
    use HasFactory;
    protected $table = "qutations";
    protected $fillable = ['status','total','delivery_fee','includeDelivery','qutation_order_id','trader_id'];
    
}
