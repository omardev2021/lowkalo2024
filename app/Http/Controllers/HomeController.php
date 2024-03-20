<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Soluation;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request) {
        $searchTerm = $request->input('search');

        $soluations = Soluation::with('category')
            ->when($searchTerm, function ($query) use ($searchTerm) {
                $query->where('name', 'like', '%' . $searchTerm . '%');
            })
            ->paginate(10);

        return view('index', compact('soluations'));
    }

    public function search(Request $request) {
        $searchTerm = $request->input('search');

        $soluations = Soluation::with('category')
            ->when($searchTerm, function ($query) use ($searchTerm) {
                $query->where('name', 'like', '%' . $searchTerm . '%')
                    ->orWhere('name_ar', 'like', '%' . $searchTerm . '%');

            })

            ->paginate(10);

        return view('index', compact('soluations'));
    }

    public function create() {
        $categories = Category::all();
        return view('create',compact('categories'));
    }

    public function store(Request $request)
    {


        // Handle the image upload
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('images'), $imageName);
            $imageUrl = 'images/' . $imageName;
        }

        // Create the solution record
        $solution = new Soluation();
        $solution->name = $request->name;
        $solution->name_ar = $request->name_ar;
        $solution->body = $request->body;
        $solution->body_ar = $request->body_ar;
        $solution->origin = $request->origin;
        $solution->category_id = $request->category_id;
        $solution->link = $request->link;
        $solution->price = $request->price;
        $solution->image_path = $imageUrl;
        $solution->save();

        // Redirect the user or return a response
        return redirect()->route('home')->with('success', 'Solution created successfully');
    }

    public function edit($id) {
        $categories = Category::all();
        $solution = Soluation::where('id',$id)->first();
        return view('edit',compact('solution','categories'));
    }


    public function update(Request $request, $id)
    {
        // Find the solution by its ID
        $solution = Soluation::findOrFail($id);

        // Handle the image upload if provided
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('images'), $imageName);
            $imageUrl = 'images/' . $imageName;

            // Update the solution's image path
            $solution->image_path = $imageUrl;
        }

        // Update the solution's data
        $solution->name = $request->name;
        $solution->name_ar = $request->name_ar;
        $solution->body = $request->body;
        $solution->body_ar = $request->body_ar;
        $solution->category_id = $request->category_id;
        $solution->origin = $request->origin;
        $solution->link = $request->link;
        $solution->price = $request->price;
        // Update other fields as needed

        // Save the updated solution
        $solution->save();

        // Redirect the user or return a response
        return redirect()->route('home')->with('success', 'Solution updated successfully');
    }
}
