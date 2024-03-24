@extends('layout.master')
@section('content')

    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">Solution's Reviews</h1>
        </div>
    </header>
    <div class="container mx-auto">

        <table class="w-full border-collapse table-auto mt-5">
            <thead>
            <tr>
                <th class="px-4 py-2 text-left bg-white">ID</th>
                <th class="px-4 py-2 text-left bg-white">Name</th>
                <th class="px-4 py-2 text-left bg-white">Email</th>
                <th class="px-4 py-2 text-left bg-white">Phone</th>

                <th class="px-4 py-2 text-left bg-white">Created At</th>
                <th class="px-4 py-2 text-left bg-white">Reviews</th>
            </tr>
            </thead>
            <tbody>
            @foreach($users as $user)
                <tr>
                    <td class="px-4 py-2 border">{{ $loop->iteration }}</td>
                    <td class="px-4 py-2 border">{{ $user->name }}</td>
                    <td class="px-4 py-2 border">{{ $user->email }}</td>
                    <td class="px-4 py-2 border">{{ $user->phone }}</td>
                    <td class="px-4 py-2 border">{{ $user->created_at->format('M d, Y') }}</td>
                    <td class="px-4 py-2 border">
                        <span class="flex flex-row">{{ count($user->reviews) }} (reviews)</span>
                    <a href="{{route('user.reviews',$user->id)}}" class="underline text-blue-500 cursor-pointer">show reviews</a>
                    </td>

                </tr>
            @endforeach
            </tbody>
        </table>

    </div>

@endsection
