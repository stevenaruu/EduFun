@extends('contents.content')

@section('content')
    @include('components.paginate-card', ['details' => $details])
@endsection
