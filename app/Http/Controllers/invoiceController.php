<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operation_record;
use App\Models\Order;
use App\Models\Wallet;
use App\Models\Qutation_item;



class invoiceController extends Controller
{
    //

    public function miniStatment($wallet_id){
        $statmentRecoreds = Operation_record::where('wallet_id', $wallet_id)->get();        
       // dd($statmentRecoreds);
        return view('invoices.statment',compact('statmentRecoreds'));
    }
    public function wallet_invoices($user_id){
        $invoices = Order::where('client_id',$user_id)->get();
        $wallet = Wallet::find($user_id);
        
        return view('invoices.wallets.index',compact('invoices','wallet'));
    }
    public function invoice($order_id){
        $invoice = Order::find($order_id);
         $invoice_items = Qutation_item::where('qutition_id',$invoice->qutation_id)->get();

        return view('invoices.invoice',compact('invoice','invoice_items'));
    }
}
