<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Qutation_order_item;
use App\Models\Qutation_order;


class qutactionOrderController extends Controller
{
    public function index(){
        $qutation_orders = Qutation_order::all();
         
        return view('qutation_order.index',compact('qutation_orders'));
    }
    public function showItems($qutation_order_id){
        
        $qutation_order_items = Qutation_order_item::where('qutation_order_id',$qutation_order_id)->get();
        //dd($qutation_order_items);
        return view('qutation_order.show',compact('qutation_order_items'));
       
    }
    public function AllItems(){
        $qutation_order_items = Qutation_order_item::all();

        //  dd($qutation_order_items[0]);
        return view('qutation_order.show',compact('qutation_order_items'));
    }
}
