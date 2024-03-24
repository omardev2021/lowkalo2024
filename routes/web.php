<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LetterController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ReviewsController;
use App\Http\Controllers\UserController;
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


    Route::get('/create-category', [CategoryController::class,'create'])->name('category.form');
    Route::post('/save-category', [CategoryController::class,'store'])->name('category.save');
    Route::get('/category-edit/{id}', [CategoryController::class,'edit'])->name('category.edit');
    Route::put('/categories/{id}', [CategoryController::class, 'update'])->name('category.update');
    Route::get('/categories/solutions/{id}', [CategoryController::class, 'soluations'])->name('category.soluations');
    Route::get('/reviews', [ReviewsController::class,'index'])->name('reviews');
    Route::put('/reviews/{id}', [ReviewsController::class, 'confirm'])->name('review.update');

    Route::get('/letters', [LetterController::class,'index'])->name('letters');
    Route::get('/users', [UserController::class,'index'])->name('users');
    Route::get('/users/reviews/{id}', [UserController::class,'reviews'])->name('user.reviews');


});

Route::get('/login', [LoginController::class,'index'])->name('login.view');

Route::post('/login', [LoginController::class,'login'])->name('login.form');
