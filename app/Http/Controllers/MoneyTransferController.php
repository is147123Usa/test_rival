<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MoneyTransferController extends Controller
{
    public function MoneyTransfer(){
        return view('MoneyTransfer.MoneyTransfer');
    }
}
