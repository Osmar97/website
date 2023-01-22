<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class funcoes extends Model
{
    public function funcionarios(){
        return $this->belongsToMany(funcoes::class , "funcaofuncs", "FkIDFuncao", "id");
    }

}
