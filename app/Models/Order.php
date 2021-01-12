<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $table = "orders";
    protected $fillable = [
        'operation_code','payment_method',
        'delivery_location','deosInclude_delivery',
        'delivery_fees','tax','sub_total','total',
        'qutation_id','client_id','trader_id','rival_fees','delivery_time'   
    ];
    public function qutation()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Qutation::class);
    }
    public function client()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(User::class);
    }
    public function trader()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Trader::class);
    }
    
}
