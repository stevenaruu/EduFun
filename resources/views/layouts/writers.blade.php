@extends('contents.content')

@section('content')
    @include('components.writer', ['writers' => $writers])
@endsection
