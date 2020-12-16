<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delivery_offer extends Model
{
    use HasFactory;
    protected $table = "delivery_offers";
    protected $fillable = [
        'fees','status',
        'max_rate','min_rate',
        'driver_id','order_id'
    ];
    public function driver()
    {
      // return $this->belongsTo('App\Models\Country');
      return $this->belongsTo(Driver::class);
    }
    public function order()
    {
      // return $this->belongsTo('App\Models\Country');
      return $this->belongsTo(Order::class);
    }


    
}
