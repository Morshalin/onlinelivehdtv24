<!-- Top Products Start -->
<div class="rs-products nav-style pt-92 md-pt-72">
    <div class="container">
        <!-- Subscribe Section Start -->
        <div class="rs-subscribe bg7">
           <div class="subscribe-form">
                <div class="row rs-vertical-middle">
                    <div class="col-lg-6 col-md-12 md-mb-30">
                        <div class="title-part">
                            <h2 class="title white-color"> Subscribe Our Newsletter</h2>
                            <p class="desc margin-0 white-color"> Subscribe to our newsletter for getting regular
                                updates.</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="subscribe-form-fields">
                             <form class="subscribe-form" action="{{route('subscribe')}}" id="subscribe" method="POST">
                                 @csrf
                                <input type="email" class="news-email" name="email" id="email" placeholder="EMAIL ADDRESS"
                                required="">
                                <input type="submit" class="news-submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Subscribe Section End -->
    </div>
</div>
<!-- Top Products End -->

<!-- Footer Start -->
<footer id="rs-footer" class="rs-footer pt-137 md-pt-70 sm-pt-65">
    <!-- Sponsor Logo Section Start -->
    <div class="rs-sponsor pb-35 md-pb-60 sm-pb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-8 offset-md-2">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/1.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/2.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/3.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/4.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/5.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/6.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/7.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-6">
                            <div class="logos">
                                <a href="#"><img src="{{asset('frontend')}}/images/sponsor/8.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Sponsor Logo Section End -->

    <!-- Footer Bottom Section Start -->
    <div class="footer-bootom">
        <div class="container">
            <div class="row rs-vertical-middle">
                <div class="col-md-7">
                    <div class="copyright">
                        <p>© {{date('Y')}} onlinelivehdtv24.com,  All Rights Reserved. Design & Developed by <a href="http://sattit.com/" target="_blank">SATT IT</a></p>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="footer-share text-right">
                        <ul>
                            <li><a target="_blank" href="{{get_option('fb')}}"><i class="fa fa-facebook"></i></a></li>
                            <li><a target="_blank" href="{{get_option('twiter')}}"><i class="fa fa-twitter"></i></a></li>
                            <li><a target="_blank" href="{{get_option('linkedin')}}"><i class="fa fa-linkedin"></i></a></li>
                            <li><a target="_blank" href="{{get_option('youtube')}}"><i class="fa fa-google-plus-square"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Bottom Section End -->
</footer>
<!-- Footer End -->