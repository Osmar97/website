<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\buy;

class buyController extends Controller
{

    public function buy(){

        $buy = buy::all();
        return view("buy", [
            "buys" => $buy,
        ]);

    }
}
