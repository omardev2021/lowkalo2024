<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\DashboardController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware(['cors'])->group(function () {


    Route::get('/videos', [ApiController::class, 'videos']);
    Route::get('/videos/{id}', [ApiController::class, 'video']);
    Route::get('/services', [ApiController::class, 'services']);
    Route::get('/services/{slug}', [ApiController::class, 'service']);
    Route::get('/soluations/{id}', [ApiController::class, 'soluation']);


    Route::post('/users/request-auth', [ApiController::class, 'auth_request']);

    Route::post('/users/request-register', [ApiController::class, 'reg_request']);


    Route::post('/users/login', [ApiController::class, 'login']);

    Route::post('/coupons/check',[ApiController::class,'check']);

    Route::post('/users/letter',[ApiController::class,'letter']);



    Route::get('/all-reviews',[DashboardController::class,'all_reviews']);
    Route::post('/review-confirm',[DashboardController::class,'confirm']);



// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

    Route::group(['middleware' => ['auth:sanctum']],function(){

        Route::post('/course',[ApiController::class,'buy_course']);
        Route::post('/course/payment-status',[ApiController::class,'payment_status']);
        Route::post('/course/save-comment',[ApiController::class,'saveComment']);
        Route::post('/soluations/save-review',[ApiController::class,'saveReview']);






    });
});
