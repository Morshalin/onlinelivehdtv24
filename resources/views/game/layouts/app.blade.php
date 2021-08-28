<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- meta tag -->
    <meta charset="utf-8">
    @yield('title')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- responsive tag -->
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="qToDUi0NS-T0DaFwG_ppaOhxs6vW2eEZ9VOv1_yzlEA" />

    @yield('meta')
    <!-- favicon -->

    <link rel="shortcut icon" type="image/x-icon" href="{{asset('storage/logo/'.get_option('favicon'))}}">
    <!-- bootstrap v4 css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/bootstrap.min.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/font-awesome.min.css">
    <!-- owl.carousel css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/owl.carousel.css">
    <!-- animate css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/animate.css">
    <!-- Slick css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/slick.css">
    <!-- off canvas css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/off-canvas.css">
    <!-- flaticon css  -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/fonts/flaticon.css">
    <!-- magnific popup css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/magnific-popup.css">
    <!-- rsmenu CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/rsmenu-main.css">
    <!-- swiper slider CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/swiper.min.css">
    <!-- rsmenu transitions CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/rsmenu-transitions.css">
    <!-- rsanimations CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/rsanimations.css">
    <link href="{{asset('backend/css/toastr.min.css')}}" rel="stylesheet">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="{{asset('style.css')}}">
    <!-- rs-spaceing css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/rs-spaceing.css">
    <!-- responsive css -->
    <link rel="stylesheet" type="text/css" href="{{asset('frontend')}}/css/responsive.css">
    
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-158655321-1"></script>
    @stack('schema_tag')

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-158655321-1');
</script>
@stack('javascript')
</head>

<body>
    <div id="fb-root"></div>
    <!--Full width header Start-->
    <div class="full-width-header">
        <!--Header Start-->
        <header id="rs-header" class="rs-header homestyle">
            <!-- Menu Start -->
           @include('game.inc.nav')
            <!-- Menu End -->
        </header>
        <!--Header End-->
    </div>
    <!--Full width header End-->
    @yield('main')


    @include('game.inc.footer')

    <!-- Scrool to Top Start -->
    <div id="scrollUp">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scrool to Top End -->

    <!-- Search Modal Start -->
    <div aria-hidden="true" class="modal fade search-modal" role="dialog" tabindex="-1">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="flaticon-cross"></span>
        </button>
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="search-block clearfix">
                    <form>
                        <div class="form-group">
                            <input class="form-control" placeholder="Search Here.." type="text">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Modal End -->

    <!-- modernizr js -->
    <script src="{{asset('frontend')}}/js/modernizr-2.8.3.min.js"></script>
    <!-- jquery latest version -->
    <script src="{{asset('frontend')}}/js/jquery.min.js"></script>
    <!-- bootstrap js -->
    <script src="{{asset('frontend')}}/js/bootstrap.min.js"></script>
    <!-- owl.carousel js -->
    <script src="{{asset('frontend')}}/js/owl.carousel.min.js"></script>
    <!-- slick js -->
    <script src="{{asset('frontend')}}/js/slick.min.js"></script>
    <!-- isotope.pkgd.min js -->
    <script src="{{asset('frontend')}}/js/isotope.pkgd.min.js"></script>
    <!-- imagesloaded.pkgd.min js -->
    <script src="{{asset('frontend')}}/js/imagesloaded.pkgd.min.js"></script>
    <!-- wow js -->
    <script src="{{asset('frontend')}}/js/wow.min.js"></script>
    <!-- magnific popup -->
    <script src="{{asset('frontend')}}/js/jquery.magnific-popup.min.js"></script>
    <!-- rsmenu js -->
    <script src="{{asset('frontend')}}/js/rsmenu-main.js"></script>
    <!-- plugins js -->
    <script src="{{asset('frontend')}}/js/plugins.js"></script>
    <!-- counter top js -->
    <script src="{{asset('frontend')}}/js/jquery.counterup.min.js"></script>
    <script src="{{asset('frontend')}}/js/waypoints.min.js"></script>
    <!-- swiper slider js -->
    <script src="{{asset('frontend')}}/js/swiper.min.js"></script>
    <!-- main js -->
    <script src="{{asset('backend/js/toastr.min.js')}}"></script>
    <script src="{{asset('frontend')}}/js/main.js"></script>
    <script src="{{ asset('backend/js/parsley.min.js') }}"></script>
    
<script>
        $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
        });
    </script>
 <script src="{{asset('js/main.js')}}"></script>
 <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v5.0&appId=491175144789752&autoLogAppEvents=1"></script>
 @stack('js')
</body>

</html>
