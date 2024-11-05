<div class="mt-5 container d-flex justify-content-between">
    @foreach ($writers as $writer)
        <div onclick="window.location='{{ route('by-writer', $id = $writer->id) }}'" class="text-center cursor-pointer">
            <div style="height: 200px" class="rounded-circle">
                <img style="max-height: 100%; max-width: 100%" class="rounded-circle shadow-lg" src={{ $writer->image }} alt="">
            </div>
            <p class="mt-4" style="font-weight: bold">{{ $writer->name }}</p>
            <p>{{ $writer->specialist }}</p>
        </div>
    @endforeach
</div>