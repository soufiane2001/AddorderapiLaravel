<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::all();
        return   $product;  
    
    }

    public function show(Product $product)
    {
        
    }

    public function store(Request $request)
    {
        $product = Product::findOrFail($request->id);
        $product->inventory = $request->inventory;
        $product->save();
        return  $request; 
    }

    public function update(Request $request,$id)
    {
        $product = Product::findOrFail($id);
        $product->inventory = $request->inventory;
        $product->save();
        return  $request;
        
    }


   





    public function destroy(Product $post)
    {
       
    }
}
