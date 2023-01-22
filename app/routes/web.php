<?php

use App\Http\Controllers\buyController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\funcionarioController;
use App\Http\Controllers\investController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\servicosController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\rentController;
use App\Http\Controllers\sellController;
use App\Http\Controllers\userController;
use App\Http\Controllers\dashboardUser;

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
Route::get('/', function (){
    return view("index");
});
Route::get('/guides', function (){
    return view("guides");
});
Route::get('/admin', function (){
    return view("admin/login");
});
Route::get("/profile", [dashboardUser::class, "showUser"]);
Route::get('/dashboard', [dashboardUser::class, "index"]);
Route::get('/about',[funcionarioController::class, 'equipa']);
Route::get('/services', [servicosController::class, 'servicos']);
Route::get('/invest', [investController::class, 'invest']);
Route::get('/buy', [buyController::class, 'buy']);
Route::get('/rent', [rentController::class, 'rent']);
Route::get('/sell', [sellController::class, 'sell']);
Route::get('/contacts', function(){
    return view("contactos");
});
Route::get('/agreement', function(){
    return view("agreement");
});
Route::get('/terms', function(){
    return view("terms");
});
Route::get('/collaborator', [funcionarioController::class, 'redirectEquipa']);
Route::get("/email", function (){
    return view("emailContent/SendEmail");
});
Route::get('/collaboratorAdmin', [funcionarioController::class, 'allEmployee']);

//Logout
Route::get('/logout', function () {
    Auth::logout();
    return redirect('/');
});

//Posts
Route::post("/collaborator", [funcionarioController::class, "getEmployee"]);
Route::post("/contacts", [MailController::class, "sendMail"]);
Route::post("/login", [userController::class, "login"]);
Route::post("/updatePersonalData", [userController::class, "updatePersonalDate"]);

//Translate Routes 
Route::get("/lang/{lang}", [LanguageController::class, 'change']);
