<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;

            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #150a42;
        }
        form {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 320px;
        }
        label {
            display: block;
            margin-bottom: 6px;
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cbd5e0;
            border-radius: 4px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
        .error-message {
            color: #e53e3e;
            font-size: 14px;
            margin-top: 6px;
        }
        button[type="submit"] {
            background-color: #4115BA;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        button[type="submit"]:hover {
            background-color: rgba(65, 21, 186, 0.66);
        }

        .logo-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .logo-container img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<form method="POST" action="{{route('login.form')}}">
    @csrf
    <div class="logo-container">
        <img src="{{asset('images/low.png')}}" alt="Your Logo">
    </div>
    <div>
        <label for="email">Email:</label>
        <input id="email" type="email" name="email" value="{{ old('email') }}" required autofocus>
        @error('email')
        <span class="error-message">{{ $message }}</span>
        @enderror
    </div>

    <div>
        <label for="secret">Secret:</label>
        <input id="secret" type="password" name="password" required>
        @error('secret')
        <span class="error-message">{{ $message }}</span>
        @enderror
    </div>

    <div>
        <button type="submit">Login</button>
    </div>
</form>
</body>
</html>
