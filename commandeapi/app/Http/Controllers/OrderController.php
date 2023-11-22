<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    //

    public function store(Request $request)
    {
        return Order::create($request->all());
    }

}
