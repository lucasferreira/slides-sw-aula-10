<?php
Route::get('/', 'HomeController@index');

Route::group(array('prefix' => 'api'), function () {
  Route::resource('cursos', 'CursosController');
  Route::resource('alunos', 'AlunosController');
});
