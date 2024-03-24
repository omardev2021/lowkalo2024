@extends('layout.master')

@section('content')
    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">Edit Category</h1>
        </div>
    </header>
    <main>
        <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow sm:rounded-lg">
                <div class="p-6 sm:px-10 bg-white">
                    <form method="POST" action="{{ route('category.update', $category->id) }}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div>
                            <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
                            <input type="text" name="name" id="name" autocomplete="name" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->name }}">
                        </div>

                        <div>
                            <label for="name_ar" class="block text-sm font-medium text-gray-700">Name Ar</label>
                            <input type="text" name="name_ar" id="name_ar" autocomplete="name_ar" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->name_ar }}">
                        </div>

                        <div class="mt-4">
                            <label for="body" class="block text-sm font-medium text-gray-700">Description</label>
                            <textarea id="body" name="body" rows="3" required
                                      class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">{{ $category->body }}</textarea>
                        </div>

                        <div class="mt-4">
                            <label for="body_ar" class="block text-sm font-medium text-gray-700">Description Ar</label>
                            <textarea id="body_ar" name="body_ar" rows="3" required
                                      class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">{{ $category->body_ar }}</textarea>
                        </div>

                        <div class="mt-4">
                            <label for="image" class="block text-sm font-medium text-gray-700">Image</label>
                            <input type="file" name="image" id="image" accept="image/*"
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border">
                        </div>




                        <div>
                            <label for="short" class="block text-sm font-medium text-gray-700">Short Description</label>
                            <input type="text" name="short" id="short" autocomplete="short" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->short }}">
                        </div>

                        <div>
                            <label for="short_ar" class="block text-sm font-medium text-gray-700">Short Description Ar</label>
                            <input type="text" name="short_ar" id="short_ar" autocomplete="short_ar" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->short_ar }}">
                        </div>



                        <div>
                            <label for="question" class="block text-sm font-medium text-gray-700">Question Content</label>
                            <input type="text" name="question" id="question" autocomplete="question" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->question }}">
                        </div>

                        <div>
                            <label for="question_ar" class="block text-sm font-medium text-gray-700">Question Content Ar</label>
                            <input type="text" name="question_ar" id="question_ar" autocomplete="question_ar" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->question_ar }}">
                        </div>

                        <div>
                            <label for="type" class="block text-sm font-medium text-gray-700">Type as slug (ex: front of house , back of house)</label>
                            <input type="text" name="type" id="type" autocomplete="type" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->type }}">
                        </div>


                        <div>
                            <label for="slug" class="block text-sm font-medium text-gray-700">Seo Slug</label>
                            <input type="text" name="slug" id="slug" autocomplete="slug" required
                                   class="mt-1 p-2 block w-full shadow-sm sm:text-sm focus:ring-blue-500 focus:border-blue-500 border-gray-300 rounded-md border" value="{{ $category->slug }}">
                        </div>






                        <div class="mt-4">
                            <button type="submit"
                                    class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-blue-500 hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                Update Solution
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
@endsection
