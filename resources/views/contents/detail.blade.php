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
    @include('components.navbar', ['categories' => $categories])
    @include('components.title', ['title' => $title])
    @include('components.detail-content', ['detail' => $detail])
    @include('components.footer')
</body>
</html>