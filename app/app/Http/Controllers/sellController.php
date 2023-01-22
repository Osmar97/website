<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\sell;

class sellController extends Controller
{
    public function sell(){

        $sell = sell::all();
        return view("sell", [
            "sells" => $sell,
        ]);

    }
}
