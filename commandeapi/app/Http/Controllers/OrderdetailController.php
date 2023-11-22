<?php

namespace App\Http\Controllers;

use App\Models\Orderdetail;
use App\Models\Ordersdetail;
use Illuminate\Http\Request;

class OrderdetailController extends Controller
{
    //
    public function store(Request $request)
    {
        return Orderdetail::create($request->all());
    }
}
