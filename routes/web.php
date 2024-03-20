<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

Route::get('/', [HomeController::class,'index'])->name('home');
Route::get('/search', [HomeController::class,'search'])->name('search_solutions');
Route::get('/categories', [CategoryController::class,'index'])->name('categories');

    Route::get('/create-solution', [HomeController::class,'create'])->name('sol.form');
    Route::post('/save-solution', [HomeController::class,'store'])->name('sol.save');

    Route::get('/solution-edit/{id}', [HomeController::class,'edit'])->name('sol.edit');
    Route::put('/solutions/{id}', [HomeController::class, 'update'])->name('sol.update');


});

Route::get('/login', [LoginController::class,'index'])->name('login.view');

Route::post('/login', [LoginController::class,'login'])->name('login.form');
