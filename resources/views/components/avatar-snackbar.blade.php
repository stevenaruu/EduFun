<div style="height: 100px;" class="mt-5 container">
    <div class="d-flex gap-4">
        <img class="rounded-pill" style="height: 100px; width: 100px;" src={{ $writer->image }} alt="">
        <div class="mt-2 d-flex flex-column justify-content-evenly align-items-center">
            <p style="font-weight: bold">{{ $writer->name }}</p>
            <p>{{ $writer->specialist }}</p>
        </div>
    </div>
</div>
