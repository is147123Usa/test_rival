<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Delivery_offer extends Model
{
    use HasFactory;
    protected $table = "admins";
    protected $fillable = ['user_id'];
    
}