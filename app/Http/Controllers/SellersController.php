<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SellersController extends Controller
{
    public function Sellers(){
        return view('Sellers.Sellers');
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
