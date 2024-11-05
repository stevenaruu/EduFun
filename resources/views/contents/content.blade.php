<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</head>

<body style="background-color: #F0F4EF">
    <div style="display: flex; flex-direction: column; min-height: 100vh;">
        <div style="flex: 1">
            @include('components.navbar', ['categories' => $categories])
            @if ($title ?? false)
                @include('components.title', ['title' => $title])
            @elseif ($writer ?? false)
                @include('components.avatar-snackbar', ['writer' => $writer])
            @endif
            @yield('content')
        </div>
        @include('components.footer')
    </div>
</body>

</html>
