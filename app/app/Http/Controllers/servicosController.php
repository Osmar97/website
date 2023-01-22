<?php

namespace App\Http\Controllers;

use App\Models\funcoes;
use Illuminate\Http\Request;
use App\Models\servicos;
use App\Models\portugalinfos;

class servicosController extends Controller
{
    
    public function servicos(){

        $servicos = servicos::all();
        return view("servicos", [
            "servicos" => $servicos,
        ]);

    }

    public function show($id){

        $servicos = servicos::findOrFail($id);
        return view("servico", [
            "servico" => $servicos,
        ]);

    }

}
