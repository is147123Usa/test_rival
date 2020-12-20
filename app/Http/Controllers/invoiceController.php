<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operation_record;

class invoiceController extends Controller
{
    //

    public function miniStatment($wallet_id){
       // $wallet_id = 2;
        $statmentRecoreds = Operation_record::where('wallet_id', $wallet_id)->get();
        
        // dd($statmentRecoreds);
        return view('invoices.statment',compact('statmentRecoreds'));
        //echo 'hhhhhhh';
    }
}
