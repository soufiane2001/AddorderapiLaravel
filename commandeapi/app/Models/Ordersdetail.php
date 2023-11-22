<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ordersdetail extends Model
{
    use HasFactory;
    protected $fillable = [
        'idproduct',
        'idcommande',
        'qte',
        'priceunique',

        
     
    ];
}
