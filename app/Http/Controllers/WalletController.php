<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WalletController extends Controller
{
    public function Wallet(){
        return view('Wallet.Wallet');
    }
    public function Details(){
        return view('Wallet.Details');
    }
    public function MoneyTransferWD(){
        return view('Wallet.MoneyTransferWD');
    }
}
