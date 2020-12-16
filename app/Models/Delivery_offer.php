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
    
}
