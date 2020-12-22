<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Qutation_order_item;

class qutactionOrderController extends Controller
{
    //
    public function index(){
        $data = Qutation_order_item::all();
        dd($data);
        return view('qutation_order.index');
    }
}
