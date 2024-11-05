@extends('contents.master')

@section('content')
    @include('components.header')
    @include('components.card', ['details' => $details])
@endsection
