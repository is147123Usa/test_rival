<?php

namespace App\Http\Controllers;
use App\Models\Trader;
use App\Models\User;
use Illuminate\Http\Request;

class SellersController extends Controller
{
    public function Sellers(){
        $trader_id = 1;
        $data = Trader::all();
        //dd($data);
        return view('Sellers.Sellers',compact('data'));
    }
    public function SellerDetails(){
        return view('Sellers.SellerDetails');
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
