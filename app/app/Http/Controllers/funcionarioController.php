<?php

namespace App\Http\Controllers;
use App\Models\funcionario;
use App\Models\funcoes;
use App\Models\portugalinfos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class funcionarioController extends Controller
{
    
    public function equipa(){
        
        $funcionarios = funcionario::whereIn("estadoID",[1])->orderBy("orderFunc", "ASC")->get();
        //$funcaoFuncionario 
        return view('equipa', [
            'funcionarios' => $funcionarios,
         ]);

    }

    public function allEmployee(){
        
        $funcionarios = funcionario::whereIn("estadoID",[1])->orderBy("orderFunc", "ASC")->get();
        //$funcaoFuncionario 
        return view('admin/collaborators', [
            'funcionarios' => $funcionarios,
         ]);

    }

    public function redirectEquipa(){
        return redirect('/about');
    }

    public function show($id){

        $funcionario= funcionario::findOrFail($id);
        return view("funcionario", [
            "funcionario" => $funcionario,
        ]);

    }
    

    public function getEmployee(Request $request)
    
    {   
        $id = $request->input('EmployeeId');

        $validator = Validator::make(['id' => $id],[
            'id' => 'required|numeric'
        ]);

        if($validator->fails()){
            return redirect()->back();
        }

        $funcionario= funcionario::findOrFail($id);
        return view("funcionario", [
            "funcionario" => $funcionario,
        ]);  
    
    }

}
