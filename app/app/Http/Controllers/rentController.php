<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\rent;

class rentController extends Controller
{
    public function rent(){

        $rent = rent::all();
        return view("rent", [
            "rents" => $rent,
        ]);

    }
}
