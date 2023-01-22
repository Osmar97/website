<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class funcionario extends Model
{
    use HasFactory;
    
    public function funcoes(){
        return $this->belongsToMany(funcoes::class , "funcaofuncs", "FkIDFunc", "FkIDFuncao");
    }

    public function positions(){
        return $this->belongsToMany(positons::class, "position_func", "FkIDFunc", "FkIDPosition");
    }

    public function redesSociais(){
        return $this->belongsToMany(social_media_configs::class , "social_media_funcionario_configs", "FkIdFuncionario", "FkIdSocialMedia")
            ->withPivot(['socialMediaLink'])
        ;
    }
}
