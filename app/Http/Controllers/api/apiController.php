<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Driver;

class apiController extends Controller
{
    //
    public function register_driver(Request $request){
        $driver = new Driver();
        $driver->cabtin_name = $request->cabtin_name;
        $driver->carNumber = $request->carNumber;
        $driver->license_no = $request->license_no;
        $driver->carType = $request->carType;
        $driver->ssl = $request->ssl;
        $driver->trader_id = $request->trader_id;
        $driver->user_id = $request->user_id;
        $driver->account_status = $request->account_status;
        $driver->proveType_id = $request->proveType_id;
        $driver->save();
        
        return response()->json(['status'=>true,'payload' => $driver],200);
    }
}
