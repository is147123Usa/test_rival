<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wallet extends Model
{
    use HasFactory;
    protected $table = "wallets";
    protected $fillable = ['balance','password','wallet_no','user_id'];
    public function user()
    {
      // return $this->belongsTo('App\Models\Country');
      return $this->belongsTo(User::class);
    }
}
