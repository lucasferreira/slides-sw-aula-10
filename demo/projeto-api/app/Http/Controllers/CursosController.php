<?php
namespace App\Http\Controllers;

use App\Curso;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CursosController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    $cursos = Curso::orderBy('name', 'ASC')->get();
    return response()->json($cursos);
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
    if ($request->has('name'))
    {
      $curso = new Curso();
      $curso->name = $request->input('name');
      $curso->save();

      return response()->json($curso);
    }

    return response()->json(array('error' => 'Por favor informe um nome de Curso válido'));
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $curso = Curso::find($id);
    if (!empty($curso))
    {
      return response()->json($curso);
    }

    return response()->json(array("error" => "Curso não encontrado"));
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
    if ($request->has('name'))
    {
      $curso = Curso::find($id);
      if (!empty($curso))
      {
        $curso->name = $request->input('name');
        $curso->save();

        return response()->json($curso);
      }

      return response()->json(array("error" => "Curso não encontrado"));
    }

    return response()->json(array('error' => 'Por favor informe um nome de Curso válido'));
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    $curso = Curso::destroy($id);
    return response()->json(array("id" => $id));
  }
}
