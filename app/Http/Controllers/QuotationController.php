<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Qutation;
use App\Models\Driver;
use App\Models\Order;
use App\Models\Qutation_item;
use App\Models\Qutation_report;


class QuotationController extends Controller
{
    public function Quotaton(){
        $qutation = Qutation::all();
       // dd($qutation[0]->);
        return view('Quotation.index',compact('qutation'));
    }
    public function QuotatonDetais($q_id){
        $qutation = Qutation::find($q_id);
        if($qutation->includeTax == 1){
            if($qutation->includeDelivery == 1){
                $sub_total = $qutation->sub_total; 
                $tax = $qutation->sub_total * 0.15; 
                $total =  $qutation->sub_total  ;
            }else{
                $sub_total = $qutation->sub_total; 
                $tax = $qutation->sub_total * 0.15; 
                $total =  $qutation->sub_total + $qutation->delivery_fee ;
            }
           
        }else{
            if($qutation->includeDelivery == 1){
                $sub_total = $qutation->sub_total;
                $tax = $qutation->sub_total * 0.15; 
                $total =  $qutation->sub_total + $tax;
            }else{
                $sub_total = $qutation->sub_total;
                $tax = $qutation->sub_total * 0.15; 
                $total =  $qutation->sub_total + $qutation->delivery_fee  + $tax;
            }
        }
        // dd($qutation);
        $qutation_item = Qutation_item::where('qutition_id',$q_id)->get();

        // dd($total);
        // you just puds here 
        $invoice = array('sub_total'=>$sub_total,'tax'=>$tax,'total'=>$total,'delivery_fee'=>$qutation->delivery_fee);
        //
        //dd($qutation_item);
        //
        return view('Quotation.show',compact('qutation','qutation_item','invoice'));
    }
    public function Qutations_reports(){
        $report_list = Qutation_report::all();
         
        return view('Quotation.qutation_report.index',compact('report_list'));
    }

}
