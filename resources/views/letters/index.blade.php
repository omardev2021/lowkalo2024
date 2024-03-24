@extends('layout.master')
@section('content')

    <header class="bg-white shadow">
        <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-900">Newsletter Subcribtions</h1>
        </div>
    </header>
    <div class="container mx-auto">

        <table class="w-full border-collapse table-auto mt-5">
            <thead>
            <tr>
                <th class="px-4 py-2 text-left bg-white">ID</th>

                <th class="px-4 py-2 text-left bg-white">Email</th>


                <th class="px-4 py-2 text-left bg-white">Created At</th>

            </tr>
            </thead>
            <tbody>
            @foreach($letters as $letter)
                <tr>
                    <td class="px-4 py-2 border">{{ $loop->iteration }}</td>
                    <td class="px-4 py-2 border">{{ $letter->email }}</td>

                    <td class="px-4 py-2 border">{{ $letter->created_at->format('M d, Y') }}</td>


                </tr>
            @endforeach
            </tbody>
        </table>

    </div>

@endsection
