<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/create','EmployeeController@create');
Route::post('/add','EmployeeController@add')->name('add');
Route::get('/export-excel','EmployeeController@exportIntoExcel');
Route::get('/export-csv','EmployeeController@exportIntoCSV');
Route::get('/get-all-employee','EmployeeController@getAllEmployees');
Route::get('/download-pdf','EmployeeController@downloadPDF');
Route::get('/import-form','EmployeeController@importForm');
Route::post('/import','EmployeeController@import')->name('import');