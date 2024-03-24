@extends('layout.master')
@section('content')

    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">User Reviews</h1>
        </div>
    </header>
    <main>
        <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">



            <!-- Categories -->
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-1 lg:grid-cols-1 gap-4">
                @foreach($reviews as $review)
                    <div class="bg-white overflow-hidden shadow rounded-lg">
                        <div class="px-6 py-4">
                            <p class="text-gray-700 text-base mb-2">Customer :{{ $review->user->name }}</p>
                            <div class="text-gray-700 text-base mb-2">Customer review:{{ $review->notes }}</div>
                            <div class="text-gray-700 text-base mb-2">Customer rate: {{ $review->rate }}</div>
                            <p class="text-gray-700 text-base mb-2">Solution :{{ $review->soluation->name }}</p>
                            <a class="underline text-blue-500" href="{{$review->image_path}}">Receipt</a>



                        </div>
                        <div class="px-6 py-4">
                            @if($review->status === 5)
                                <button disabled class="inline-block bg-gray-500 text-white px-4 py-2 rounded mr-2 text-center w-full">Confirmed</button>

                            @else
                                <form action="{{route('review.update',$review->id)}}" method="post">
                                    @csrf
                                    @method('PUT')
                                    <button type="submit" class="inline-block bg-[#4115BA] text-white px-4 py-2 rounded mr-2 text-center w-full">Confirm</button>

                                </form>
                            @endif

                        </div>
                    </div>
                @endforeach
            </div>

        </div>
    </main>

@endsection
