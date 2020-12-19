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
    public function show($wallet_id){
        $WalletsList = Wallet::find($wallet_id);
        //dd($WalletsList);
        return view('Wallet.show',compact('WalletsList'));
    }
    public function MoneyTransferWD(){
        return view('Wallet.MoneyTransferWD');
    }
}
