<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Review;
use App\Models\Soluation;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index() {
        $categories = Category::withCount('soluations')->get();

        return view('categories.index',compact('categories'));
    }

    public function create() {

        return view('categories.create');
    }

    public function store(Request $request)
    {


        // Handle the image upload
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('images/services'), $imageName);
            $imageUrl = 'images/services/' . $imageName;
        }

        // Create the solution record
        $category = new Category();
        $category->name = $request->name;
        $category->name_ar = $request->name_ar;
        $category->body = $request->body;
        $category->body_ar = $request->body_ar;
        $category->short = $request->short;
        $category->short_ar = $request->short_ar;
        $category->type = $request->type;
        $category->slug = $request->slug;
        $category->question = $request->question;
        $category->question_ar = $request->question_ar;
        $category->image_path = $imageUrl;

        $category->save();

        // Redirect the user or return a response
        return redirect()->route('categories')->with('success', 'Category created successfully');
    }




    public function edit($id) {

        $category = Category::where('id',$id)->first();
        return view('categories.edit',compact('category'));
    }


    public function update(Request $request, $id)
    {
        // Find the solution by its ID
        $category = Category::findOrFail($id);

        // Handle the image upload if provided
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('images/services'), $imageName);
            $imageUrl = 'images/services/' . $imageName;

            // Update the solution's image path
            $category->image_path = $imageUrl;
        }

        // Update the solution's data
        $category->name = $request->name;
        $category->name_ar = $request->name_ar;
        $category->body = $request->body;
        $category->body_ar = $request->body_ar;
        $category->short = $request->short;
        $category->short_ar = $request->short_ar;
        $category->type = $request->type;
        $category->slug = $request->slug;
        $category->question = $request->question;
        $category->question_ar = $request->question_ar;

        // Update other fields as needed

        // Save the updated solution
        $category->save();

        // Redirect the user or return a response
        return redirect()->route('categories')->with('success', 'Solution updated successfully');
    }

    public function soluations($id) {
        $soluations = Soluation::where('category_id',$id)->get();
        return view('categories.soluations',compact('soluations'));
    }
}
