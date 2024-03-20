@extends('layout.master')
@section('content')

    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">Dashboard</h1>
        </div>
    </header>
    <main>
        <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
            <!-- Search Box -->
{{--            <div class="mb-4 flex justify-end">--}}
{{--                <form action="{{ route('search_solutions') }}" method="GET">--}}
{{--                    <input type="text" id="search" name="search" placeholder="Search" class="w-64 border rounded py-2 px-3">--}}
{{--                </form>--}}
{{--            </div>--}}

            <!-- Categories -->
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
                @foreach($categories as $category)
                    <div class="bg-white overflow-hidden shadow rounded-lg">
                        <div class="px-6 py-4">
                            <div class="font-bold text-xl mb-2">{{ $category->name }}</div>
                            <p class="text-gray-700 text-base">{{ $category->description }}</p>
                            <p class="text-gray-700 text-base">{{ $category->soluations_count }} Solutions</p>
                        </div>
                        <div class="px-6 py-4">
                            <a  class="inline-block bg-blue-500 text-white px-4 py-2 rounded mr-2">Show</a>
                            <a  class="inline-block bg-green-500 text-white px-4 py-2 rounded">Edit</a>

                            {{--                            <a href="{{ route('show_solution', $soluation->id) }}" class="inline-block bg-blue-500 text-white px-4 py-2 rounded mr-2">Show</a>--}}
                            {{--                            <a href="{{ route('edit_solution', $soluation->id) }}" class="inline-block bg-green-500 text-white px-4 py-2 rounded">Edit</a>--}}
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </main>

@endsection
