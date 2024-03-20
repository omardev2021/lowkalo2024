<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Review;


class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function all_reviews()
    {
        $reviews = Review::with('soluation','user')->get();
        return response()->json($reviews);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function confirm(Request $request)
    {
        $rev_id = $request->review;

        // Find the review
        $review = Review::find($rev_id);

        if ($review) {
            // Update the review status to 5
            $review->status = 5;
            $review->save();

            // Update the average rating for the associated solution
            $soluation = $review->soluation;
            $averageRating = $soluation->reviews()->where('status', 5)->average('rate') ?? 0;
            $soluation->update(['average_rating' => $averageRating]);

            return response()->json([
                'message' => 'success'
            ]);
        } else {
            return response()->json([
                'message' => 'Review not found',
            ], 404);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
