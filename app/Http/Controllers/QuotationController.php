<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Qutation;
use App\Models\Driver;
use App\Models\Order;
use App\Models\Qutation_item;

class QuotationController extends Controller
{
    public function Quotaton(){
        $qutation = Qutation::all();
       // dd($qutation[0]->);
        return view('Quotation.index',compact('qutation'));
    }
    public function QuotatonDetais($q_id){
        $qutation = Qutation::find($q_id);
        $qutation_item = Qutation_item::find($q_id);
       // dd($qutation);
        $driver_qty = Driver::where('trader_id',$qutation->trader_id)->get();
        $dealsQty = Order::where('trader_id',$qutation->trader_id)->get();

        $payload =array('drivers'=>$driver_qty,'driver_qty'=>count($driver_qty) ,'dealsQty'=>count($dealsQty));
 

        return view('Quotation.show',compact('qutation','qutation_item','payload'));
    }

}
