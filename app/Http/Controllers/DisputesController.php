<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DisputesController extends Controller
{
    public function Disputes(){
        return view('Disputes.Disputes');
    }
    public function DisputesDetails(){
        return view('Disputes.DisputesDetails');
    }
}
