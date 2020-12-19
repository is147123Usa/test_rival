<?php

namespace App\Http\Controllers;
use App\Models\Wallet;
use Illuminate\Http\Request;

class WalletController extends Controller
{
    public function index(){
        $WalletsList = Wallet::all();
        //dd($WalletsList[0]->user->name);

        return view('Wallet.index',compact('WalletsList'));
    }
    public function show(){
        return view('Wallet.show');
    }
    public function MoneyTransferWD(){
        return view('Wallet.MoneyTransferWD');
    }
}
