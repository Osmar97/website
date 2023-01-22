<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\invest;

class investController extends Controller
{
    public function invest(){

        $invest = invest::all();
        return view("invest", [
            "invests" => $invest,
        ]);

    }
}
