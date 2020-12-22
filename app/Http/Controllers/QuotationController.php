<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Qutation;
use App\Models\Driver;
use App\Models\Order;
use App\Models\Qutation_order_item;
use App\Models\Qutation_report;
use App\Models\Setting;



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
        $rival = Setting::all();
        $rival_fee ;
        foreach($rival as $value){
            if($value->name == 'rival_tax'){
                $rival = $value->valuee;
            }
        }
    
        $sub_total = array();
        $items = array();
        $qty = array();
        foreach($qutation_item as $value){
             
                $res = $value->qty * $value->price;

                array_push($items,$res);
                array_push($qty,$value->qty);
                array_push($sub_total,$res);
        }
        $sub_total = array_sum($sub_total);
        $items_total = array_sum($items);
        $qty = array_sum($qty);
        $rival = $sub_total* $rival;
        //= $sub_total * $rival;
        if($qutation->includeDelivery == 0){
            $total = $sub_total + $qutation->delivery_fee + $rival;
        }else{
            $total = $sub_total + $rival ;
        }
        // dd($total);
        // you just puds here 
        $invoice = array('sub_total'=>$sub_total,'rival_fees'=>$rival,'total'=>$total,'items_total'=>$items_total,'qty'=>$qty);
        //
        //dd($qutation_item);
        //
        return view('Quotation.show',compact('qutation','qutation_item','invoice'));
    }
    public function Items(){
        $qutation_item = Qutation_item::all();

        return view('Quotation.itemList',compact('qutation_item'));
    }
    public function Qutations_reports(){
        $report_list = Qutation_report::all();
         
        return view('Quotation.qutation_report.index',compact('report_list'));
    }

}
