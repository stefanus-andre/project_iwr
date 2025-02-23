<!DOCTYPE html>
<html>
<head>
    <title>Welcome!</title>
</head>
<body>
    <h1>Hello, {{ $user->name }}!</h1>
    <p>Thank you for signing up.</p>
    <p>Click the button below to visit our site.</p>
    <a href="{{ url('/') }}" style="background-color: blue; color: white; padding: 10px 15px; text-decoration: none;">Visit Website</a>
</body>
</html>
