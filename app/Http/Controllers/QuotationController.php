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
        $qutation_item = Qutation_item::where('qutition_id',$q_id)->get();
       // $sub_total = $qutation->total - ($qutation->total * 0.15) ; 
        //you just puds here 


        //

        return view('Quotation.show',compact('qutation','qutation_item'));
    }
    public function Qutations_reports(){
        return view('Quotation.qutation_reports');
    }

}
