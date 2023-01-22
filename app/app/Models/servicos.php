<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class servicos extends Model
{
    use HasFactory;

    public function subServices(){
        return $this->hasMany(servicos_types::class, "FK_id_servico");
    }

}
