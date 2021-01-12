<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sh_room;

class ShowroomController extends Controller
{
    public function Showroom(){         
        return view('Showroom.Showroom');
    }
    public function actions($status_id,$item_id){
       // dd($status_id,$item_id);
       $item = Sh_room::findOrFail($item_id);
       //dd($item);
       $item->status = $status_id ; 
       $item->save();
       return redirect()->back()->with('alert', 'Status have been updated successfuly');

    }
}
 