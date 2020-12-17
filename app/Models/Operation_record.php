<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Operation_record extends Model
{
    use HasFactory;
    protected $table = "operation_records";
    protected $fillable = [
        'OprationDesc','status',
        'depit','crdit',
        'balance_before','balance_after',
        'refer_no','notes','oprationType_id',
        'wallet_id'
];
public function oprationType()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Operation_type::class);
    }
    
public function wallet()
    {
    // return $this->belongsTo('App\Models\Country');
    return $this->belongsTo(Wallet::class);
    }
    
    
}
