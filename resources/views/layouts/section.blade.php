@extends('contents.content')

@section('content')
    @include('components.card', ['details' => $details])
@endsection
