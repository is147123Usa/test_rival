<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class QuotationController extends Controller
{
    public function Quotaton(){
        return view('Quotation.Quotaton');
    }
    public function QuotatonDetais(){
        return view('Quotation.QuotatonDetais');
    }
}
