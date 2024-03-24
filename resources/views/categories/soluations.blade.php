@extends('layout.master')
@section('content')

    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">Category solutions</h1>
        </div>
    </header>
    <main>
        <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">




            <!-- Solutions -->
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
                @foreach($soluations as $soluation)
                    <div class="bg-white overflow-hidden shadow rounded-lg">
                        <img src="{{ $soluation->image_path }}" alt="{{ $soluation->title }}" class="w-full h-48 object-cover">
                        <div class="px-6 py-4">
                            <div class="font-bold text-xl mb-2">{{ $soluation->name }}</div>
                            <div class="font-bold text-xl mb-2">{{ $soluation->category->name }}</div>
                            <p class="text-gray-700 text-base">{{ $soluation->price }}</p>
                        </div>
                        <div class="px-6 py-4">
                            <a href="{{ route('sol.edit', $soluation->id) }}" class="inline-block bg-[#4115BA] text-white px-4 py-2 rounded mr-2 text-center w-full">Show & Update</a>

                            {{--                            <a href="{{ route('show_solution', $soluation->id) }}" class="inline-block bg-blue-500 text-white px-4 py-2 rounded mr-2">Show</a>--}}
                            {{--                            <a href="{{ route('edit_solution', $soluation->id) }}" class="inline-block bg-green-500 text-white px-4 py-2 rounded">Edit</a>--}}
                        </div>
                    </div>
                @endforeach
            </div>


        </div>
    </main>

@endsection
