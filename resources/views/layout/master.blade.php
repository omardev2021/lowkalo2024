<!doctype html>
<html lang="en" class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.tailwindcss.com"></script>
    <meta name="robots" content="noindex">

</head>
<body class="h-full ">

<div class="min-h-full">
   @include('layout.header')

   @yield('content')
</div>


@include('layout.footer')
</body>
</html>
