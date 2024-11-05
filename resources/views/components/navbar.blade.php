<div style="background-color: white" class="shadow-sm">
    <nav class="navbar navbar-expand-lg navbar-light container">
        <div class="container-fluid d-flex justify-content-between">
            <img src="{{ asset('assets/images/logo.jpg') }}" height="50" alt="">
            <div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav d-flex gap-4">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Category
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                @foreach ($categories as $category)
                                    <li><a class="dropdown-item" href="{{ route('category', $id=$category->id) }}">{{ $category->name }}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('writers') }}">Writers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('about-us') }}">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('popular') }}">Popular</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
