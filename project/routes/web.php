<?php

use Illuminate\Support\Facades\DB;

Route::get('/', function () {
  $estudo = DB::select('select * from tecnologias where conhecimento = ?', [1]); 
  $conhecimento = DB::select('select * from tecnologias where conhecimento = ?', [0]);

  return view('travel_list', ['conhecimento' => $conhecimento, 'estudo' => $estudo ] );
});
