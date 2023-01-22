<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class social_media_configs extends Model
{
    use HasFactory;

    public function funcionarios(){
        return $this->belongsToMany(funcionario::class);
    }
}
