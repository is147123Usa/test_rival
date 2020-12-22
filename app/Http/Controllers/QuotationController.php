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
        // dd($qutation);
        $qutation_item = Qutation_item::where('qutition_id',$q_id)->get();
        $sub_total = $qutation->sub_total; 
        $tax = $qutation->sub_total * 0.15; 
        $total =  $qutation->sub_total + $tax + $qutation->delivery_fee;
        // dd($total);
        // you just puds here 
        $invoice = array('sub_total'=>$sub_total,'tax'=>$tax,'total'=>$total,'delivery_fee'=>$qutation->delivery_fee);
        //
        //dd($qutation_item);
        //
        return view('Quotation.show',compact('qutation','qutation_item','invoice'));
    }
    public function Qutations_reports(){
        return view('Quotation.qutation_reports');
    }

}
