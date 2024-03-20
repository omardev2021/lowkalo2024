@extends('layout.master')

@section('content')
    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">Create New Solution</h1>
        </div>
    </header>
    <main>
        <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow sm:rounded-lg">
                <div class="p-6 sm:px-10 bg-white">
                    <form method="POST" action="{{ route('sol.save') }}" enctype="multipart/form-data">
                        @csrf
                        <div>
                            <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
                            <input type="text" name="name" id="name" autocomplete="name" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                        </div>

                        <div>
                            <label for="name_ar" class="block text-sm font-medium text-gray-700">Name Ar</label>
                            <input type="text" name="name_ar" id="name_ar" autocomplete="name_ar" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                        </div>

                        <div class="mt-4">
                            <label for="body" class="block text-sm font-medium text-gray-700">Description</label>
                            <textarea id="body" name="body" rows="3" required
                                      class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border"></textarea>
                        </div>

                        <div class="mt-4">
                            <label for="body_ar" class="block text-sm font-medium text-gray-700">Description Ar</label>
                            <textarea id="body_ar" name="body_ar" rows="3" required
                                      class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border"></textarea>
                        </div>

                        <div class="mt-4">
                            <label for="image" class="block text-sm font-medium text-gray-700">Image</label>
                            <input type="file" name="image" id="image" accept="image/*"
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                        </div>

                        <div class="mt-4">
                            <label for="category" class="block text-sm font-medium text-gray-700">Category</label>
                            <select id="category" name="category_id" required
                                    class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                                <option value="">Select a category</option>
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="mt-4">
                            <label for="origin" class="block text-sm font-medium text-gray-700">Origin</label>
                            <select id="origin" name="origin" required
                                    class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">

                                <option value="ksa">Local</option>
                                <option value="global">global</option>

                            </select>
                        </div>




                        <div>
                            <label for="link" class="block text-sm font-medium text-gray-700">Solution Website Link</label>
                            <input type="text" name="link" id="link" autocomplete="link" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                        </div>

                        <div>
                            <label for="price" class="block text-sm font-medium text-gray-700">Price</label>
                            <input type="text" name="price" id="price" autocomplete="price" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                        </div>



                        <div class="mt-4">
                            <button type="submit"
                                    class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-blue-500 hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                Create Solution
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
@endsection
