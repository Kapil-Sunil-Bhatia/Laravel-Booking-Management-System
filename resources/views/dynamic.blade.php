@extends('layout.baseview')
@section('title','Login')
@section('style')
<style>
.navbar-brand img {
    width: 60px;
}

.navbar .navbar-nav .nav-link {

    font-size: 1.1em;
    padding: 0.5em 1em;
}

body {
    background-color: lightcyan;
}

@media screen and (min-width: 768px) {
    .navbar-brand img {
        width: 80px;
    }

    .navbar-brand {
        margin-right: 0;
        padding: 0 1em;
    }
}

a {
    text-decoration: none;
}
</style>
@endsection
@section('content')

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-lightcyan">
            <div class="container-fluid">
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar1">
                    <i class="bi bi-list"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbar1">
                    <div class="navbar-nav mx-auto text-black">

                        <a href="{{url('')}}" class="nav-item nav-link active">Home</a>
                        <a href="{{url('page/team')}}" class="nav-item nav-link text-black">Team</a>
                        <a href="{{url('')}}" class="navbar-brand d-none d-md-block">
                            <img src="{{asset('assets/images/logo.png')}}" alt="Brand Logo">
                        </a>
                        <a href="{{url('page/about-us')}}" class="nav-link text-black">About Us</a>
                        <a href="{{url('page/contact-us')}}" class="nav-item nav-link text-black">Contact Us</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main class="m-5">
        {!! isset($data->html)?$data->html : 'Page not found' !!}
    </main>
    <footer style="background-color:gray">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="container m-5">
                        <div>
                            <p class="text-white" style="text-align: justify;">Welcome to our luxury hotel! We offer an
                                unparalleled hospitality
                                experience, catering to discerning travelers. Our warm and attentive staff ensures your
                                stay exceeds expectations. Indulge in elegant and tranquil accommodations, meticulously
                                crafted for comfort. Explore diverse culinary offerings and a curated selection of wines
                                and spirits. Relax at our state-of-the-art spa and wellness facilities or maintain your
                                fitness routine. Our versatile event spaces cater to gatherings of all sizes.
                                Conveniently located in Navi Mumbai, we provide personalized recommendations to explore
                                local
                                attractions. We are committed to sustainability, striving for a greener future. Choose
                                our hotel for an unforgettable stay.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="container m-5">
                        <p class="text-white fs-5">Quick Links</p>
                        <ul class="remove-bullets remove-text-decoration" style="color: white; ">
                            <li><i class="bi bi-instagram" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Instagram</a></li>
                            <li><i class="bi bi-facebook" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Facebook</a></li>
                            <li><i class="bi bi-linkedin" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Linkedin</a></li>
                            <li><i class="bi bi-youtube" style="color: white;"></i> <a href="#"
                                    class="remove-text-decoration text-white">Youtube</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="text-white text-center">
                    <p>All Rights Reserved &copy 2023</p>
                </div>
            </div>
        </div>
    </footer>
</body>
@endsection
@section('customjs')
<script>
</script>
@endsection
