<div class="container">
    <h5>{{ $detail->title }}</h5>
    <div style="height: 400px; border-radius: 2rem" class="bg-secondary">
        <img style="max-height: 100%; width: 100%; object-fit: cover; border-radius: 2rem" src="{{ $detail->image }}" alt="">
    </div>
    <p>{{ $detail->date }} | {{ $detail->writer->name }}</p>
    <p class="mt-4">{{ $detail->description }}</p>
</div>