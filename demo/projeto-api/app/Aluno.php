<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Aluno extends Model
{
  protected $table = "alunos";

  public function curso()
  {
    return $this->belongsTo("App\Curso", "curso_id");
  }
}
