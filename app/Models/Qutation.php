<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Qutation extends Model
{
    use HasFactory;
    protected $table = "qutations";
    protected $fillable = [
        'status','total',
        'delivery_fee','includeDelivery',
        'qutation_order_id','trader_id'
    ];
    public function trader(){
        return $this->belongsTo(Trader::class);
    }
    public function qutation_order(){
        return $this->belongsTo(Qutation_order::class);
    }
    
}
