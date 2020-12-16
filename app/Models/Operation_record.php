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
        'refer_no','notes','oprationType',
        'wallet_id'
];
    
}
