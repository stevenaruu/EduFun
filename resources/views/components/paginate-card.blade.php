<div class="container">
    @foreach ($details as $detail)
        <div style="height: 180px" class="row d-flex my-5">
            <div class="col-3 rounded m-0 p-0 position-relative">
                <img src="{{ $detail->image }}" style="border-radius: 1.5rem"
                    class="position-absolute h-100 w-100 object-fit-cover" alt="Image">
            </div>
            <div class="col-9 m-0 position-relative">
                <h5 class="mt-3">{{ $detail->title }}</h5>
                <div style="font-size: 12px">{{ $detail->date }} | by: {{ $detail->writer->name }}</div>
                <div class="text-truncate">{{ $detail->description }}</div>
                <a href="{{ route('details', $id = $detail->id) }}">
                    <button type="button"
                        class="btn btn-secondary rounded-pill px-5 position-absolute bottom-0 end-0 me-3 mb-3">Read
                        More...</button>
                </a>
            </div>
        </div>
    @endforeach
    <div class="d-flex justify-content-center align-items-center">
        {{ $details->links() }}
    </div>
</div>
