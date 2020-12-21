<?php

namespace App\Http\Controllers;
use App\Models\Wallet;
use App\Models\Trader;
use App\Models\User;
use App\Models\Driver;
use Illuminate\Http\Request;

class SellersController extends Controller
{
    public function Sellers(){
        $trader_id = 1;
        $data = Trader::all();
       // dd($data);
        return view('Sellers.Sellers',compact('data'));
    }
    public function SellerDetails($seller_id){
        $trader = Trader::find($seller_id);
         $seller = Driver::WHERE('trader_id',$seller_id)->GET();
        $wallet  = Wallet::where('user_id',$trader->user->id)->get();
      // dd($wallet[0]->wallet_no);
         return view('Sellers.SellerDetails',compact('seller'));
    }
    public function SellerWallet(){
        return view('/Sellers.SellerWallet');
    }
    public function SellerDeals(){
        return view('/Sellers.SellerDeals');
    }
    public function SellerInvoices(){
        return view('/Sellers.SellerInvoices');
    }
    public function SellerInvoicePrint(){
        return view('/Sellers.SellerInvoicePrint');
    }
}
