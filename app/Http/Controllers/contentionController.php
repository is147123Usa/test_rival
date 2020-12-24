<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contention;

class contentionController extends Controller
{
    //
    public function index(){
        $contention = Contention::all();
        
        return view('contention.index',compact('contention'));
    }
    public function show($con_id){
        $data = Contention::find($con_id);
        //dd($data);
        return view('contention.show',compact('data'));
    }
    public function store(Request $req){
        //dd($req->all());
        $contention = Contention::find($req->con_id);
       //  dd($contention);

        $contention->sup_investigtion = $req->Investigation;
        $contention->sup_commendation = $req->recommendation;
        $contention->supervisor_id = 1;
        
        if($contention->save()){
            return redirect()->to('Contention/'.$req->con_id)->with('alert', 'Contention Has been closed successfuly!');
        }else{
            return redirect()->back()->with('alert', 'Faild to Close contention !');
        }
        

    }
}
