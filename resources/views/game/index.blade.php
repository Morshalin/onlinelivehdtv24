@php
if(isset($upcoming_match)){
date_default_timezone_set('Asia/Dhaka');
    $start_date =$upcoming_match->event_start_date.' 00:00:00';
    $end_date =$upcoming_match->event_end_date.' 23:59:59';
    
    $to = \Carbon\Carbon::createFromFormat('Y-m-d H:s:i', $start_date);
    $from = \Carbon\Carbon::createFromFormat('Y-m-d H:s:i', $end_date);
    $diff_in_days = $to->diffInDays($from);
}elseif(isset($alternrt_match)){
    date_default_timezone_set('Asia/Dhaka');
    $start_date =$alternrt_match->event_start_date.' 00:00:00';
    $end_date =$alternrt_match->event_end_date.' 23:59:59';
    
    $to = \Carbon\Carbon::createFromFormat('Y-m-d H:s:i', $start_date);
    $from = \Carbon\Carbon::createFromFormat('Y-m-d H:s:i', $end_date);
    $diff_in_days = $to->diffInDays($from);
}
@endphp
@extends('game.layouts.app')
@section('title')
<title> Sports | Home </title>
@endsection
@section('meta')
<meta name="title" content="{{isset($seo->seo_title)?$seo->seo_title:''}}">
    <meta name="description" content="{{isset($seo->meta_description)?$seo->meta_keyword:''}}">
    <meta name="keywords" content="{{isset($seo->meta_description)?$seo->meta_keyword:''}}">
@endsection
@push('javascript')
{!!isset($seo->header_code)?$seo->header_code:''!!}
@endpush
@section('main')
<!-- Slider Section Start -->
<div id="rs-slider" class="rs-slider home-slider slider-navigation">
    <div class="slider-carousel owl-carousel">
        <div class="single-slider">
            @if (isset($right_slide) && $right_slide->count() > 0)
                @foreach ($right_slide as $right_item)
                    <div class="container">
                        <div class="text-part">
                            <h2 class="sub-title wow fadeInLeft" data-wow-delay="1s">{{$right_item->title}}</h2>
                            <h1 class="title wow fadeInRight" data-wow-delay="1s"><span class="primary-color">{{$right_item->sub_title}}</span></h1>
                            <div class="desc wow fadeInLeft" data-wow-delay="1s">{!!$right_item->description!!}</div>
                            <div class="slider-btn wow fadeInRight" data-wow-delay="1s"></div>
                        </div>
                        <div class="fly-layer">
                            <div class="layer-image">
                                <div class="parallax-ball">
                                    <img class="animate3" src="{{asset('uploads')}}/{{$right_item->image_two}}" alt="img">
                                </div>
                                <div class="animate4">
                                    <img src="{{asset('uploads')}}/{{$right_item->image_one}}" alt="Slider Layer Image">
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
        <div class="single-slider slide2">
            @if (isset($left_slide) && $left_slide->count() > 0)
                @foreach ($left_slide as $left_item)
                    <div class="container">
                        <div class="image-part common">
                            <div class="image-wrap">
                                <img class="player animate5" src="{{asset('uploads')}}/{{$left_item->image_one}}" alt="">
                                <img class="ball animate6" src="{{asset('uploads')}}/{{$left_item->image_two}}" alt="">
                            </div>
                        </div>
                        <div class="text-part common">
                            <h2 class="sub-title">{{$left_item->title}}</h2>
                            <h1 class="title"><span class="primary-color">{{$left_item->sub_title}}</span></h1>
                            <div class="desc">{!!$left_item->description!!}</div>
                            <div class="slider-btn">
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</div>
<!-- Slider Section End -->

<!-- Upcomming Match & Video Section Start -->
<div class="couter-and-upcomming pt-100 md-pt-80 sm-pt-20 mb-30">
    <div class="container">
        <div class="row">
            @if (isset($upcoming_match))
            @if ($upcoming_match->match_condition == 2)
            <div class="col-lg-4 pr-0 col-padding-md md-mb-30">
                <div class="rs-upcoming-match bg1 text-center">
                    <div class="title-style">
                        <h4 class="margin-0 white-color">Upcoming Match</h4>
                        <span class="line-bg pt-18 y-w"></span>
                    </div>
                    
                    <div class="rs-countdown mt-45 md-mt-30">
                    <div class="rs-countdown mt-45 md-mt-30">
                        <div id="countdown"></div>
                    </div>
                    </div>
                    
                    <div class="teams mt-25 md-mt-50">
                        <div class="row rs-vertical-middle">
                            <div class="col-md-4 col-sm-4 col-4">
                                <div class="team-logo">
                                    <img class="size-80" src="{{asset('uploads')}}/{{isset($upcoming_match->clubone->logo_image)?$upcoming_match->clubone->logo_image:''}}"
                                        alt="Valencia">
                                    <div class="name white-color">{{isset($upcoming_match->clubone->club_name)?$upcoming_match->clubone->club_name:''}}</div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <div class="versase">VS</div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <div class="team-logo">
                                    <img class="size-80" src="{{asset('uploads')}}/{{isset($upcoming_match->clubtwo->logo_image)?$upcoming_match->clubtwo->logo_image:''}}"
                                        alt="Real Sociedad">
                                    <div class="name white-color">{{isset($upcoming_match->clubtwo->club_name)?$upcoming_match->clubtwo->club_name:''}}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="match-info mt-28">
                        <ul>
                            <li>{{$upcoming_match->studium->studium_name}}</li>
                            <li>{{date("F d, Y",strtotime($upcoming_match->match_start_date)) }}</li>
                        </ul>
                        <span class="text-center text-white my-2">{{$upcoming_match->category->cat_name}}</span>
                        <a href="{{route('eventdetalis', $upcoming_match->title_slug)}}"><div class="time pt-15 white-color">See Detalis</div><a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 pl-30 col-padding-md">
                <div class="rs-video big-space bg2 bdru-4 text-center" style="background-image: url({{asset('uploads')}}/{{$upcoming_match->thumbnail_image}});">
                    <div class="video-contents">
                        <a class="play-btn btn"  href="{{route('eventdetalis', $upcoming_match->title_slug)}}"><i
                                class="fa fa-play"></i></a>
                        <h3 class="title white-color mt-18 mb-0">Watch Now</h3>
                    </div>
                </div>
            </div>
            @elseif ($upcoming_match->match_condition == 1)
            <div class="col-lg-4 pr-0 col-padding-md md-mb-30">
                <div class="rs-upcoming-match bg1 text-center">
                    <div class="title-style">
                        <h4 class="margin-0 white-color">Upcoming Match</h4>
                        <span class="line-bg pt-18 y-w"></span>
                    </div>
                    <div class="rs-countdown mt-45 md-mt-30">
                        <div id="countdown" class="countdown"></div>
                    </div>
                    <div id="game" class="game"></div>
                    <div id="game" class="countdown"></div>
                    <div class="teams mt-25 md-mt-50">
                        <div class="row rs-vertical-middle">
                            <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                <div class="team-logo">
                                    <img class="size-80" src="{{asset('uploads')}}/{{isset($upcoming_match->singlematch->logo_image)?$upcoming_match->singlematch->logo_image:''}}"
                                        alt="Valencia">
                                    <div class="name white-color">{{isset($upcoming_match->singlematch->club_name)?$upcoming_match->singlematch->club_name:''}}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="match-info mt-28">
                        <ul>
                            <li>{{$upcoming_match->studium->studium_name}}</li>
                            <li>{{date("F d, Y",strtotime($upcoming_match->match_start_date)) }}</li>
                        </ul>
                        <span class="text-center text-white my-2">{{$upcoming_match->category->cat_name}}</span>
                        <a href="{{route('eventdetalis', $upcoming_match->title_slug)}}"><div class="time pt-15 white-color">See Detalis</div><a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 pl-30 col-padding-md">
                <div class="rs-video big-space bg2 bdru-4 text-center" style="background-image: url({{asset('uploads')}}/{{$upcoming_match->thumbnail_image}});">
                    <div class="video-contents">
                        <a class="play-btn btn" href="{{route('eventdetalis', $upcoming_match->title_slug)}}"><i
                                class="fa fa-play"></i></a>
                        <h3 class="title white-color mt-18 mb-0">Watch Now</h3>
                    </div>
                </div>
            </div>
            @endif
        @else
            @if (isset($alternrt_match))
            <div class="col-lg-4 pr-0 col-padding-md md-mb-30">
                <div class="rs-upcoming-match bg1 text-center">
                    <div class="title-style">
                        <h4 class="margin-0 white-color">Upcoming Match</h4>
                        <span class="line-bg pt-18 y-w"></span>
                    </div>
                    
                    <div class="rs-countdown mt-45 md-mt-30">
                        <div id="countdown" class="countdown"></div>
                    </div>
                     <div id="game" class="countdown"></div>
                    <div class="teams mt-25 md-mt-50">
                        <div class="row rs-vertical-middle">
                            <div class="col-md-4 col-sm-4 col-4">
                                <div class="team-logo">
                                    <img class="size-80" src="{{asset('uploads')}}/{{isset($alternrt_match->clubone->logo_image)?$alternrt_match->clubone->logo_image:''}}"
                                        alt="Valencia">
                                    <div class="name white-color">{{isset($alternrt_match->clubone->club_name)?$alternrt_match->clubone->club_name:''}}</div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <div class="versase">VS</div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-4">
                                <div class="team-logo">
                                    <img class="size-80" src="{{asset('uploads')}}/{{isset($alternrt_match->clubtwo->logo_image)?$alternrt_match->clubtwo->logo_image:''}}"
                                        alt="Real Sociedad">
                                    <div class="name white-color">{{isset($alternrt_match->clubtwo->club_name)?$alternrt_match->clubtwo->club_name:''}}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="match-info mt-28">
                        <ul>
                            <li>{{$alternrt_match->studium->studium_name}}</li>
                            <li>{{date("F d, Y",strtotime($alternrt_match->match_start_date)) }}</li>
                        </ul>
                        <span class="text-center text-white my-2">{{$alternrt_match->category->cat_name}}</span>
                        <a href="{{route('eventdetalis', $alternrt_match->title_slug)}}"><div class="time pt-15 white-color">See Detalis</div><a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 pl-30 col-padding-md">
                <div class="rs-video big-space bg2 bdru-4 text-center" style="background-image: url( {{asset('uploads')}}/{{$alternrt_match->thumbnail_image}});">
                    <div class="video-contents">
                        <a class="play-btn btn"  href="{{route('eventdetalis', $alternrt_match->title_slug)}}"><i
                                class="fa fa-play"></i></a>
                        <h3 class="title white-color mt-18 mb-0">Watch Now</h3>
                    </div>
                </div>
            </div>
            @else
            <div class="col-lg-12 text-center">
                <h1 class="text-regular font-accent text-primary text-italic"><span class="big"></span></h1>
                <h1>Don't have an event on your website.</h1>
                <hr class="divider divider-dashed offset-top-60">
                <p class="offset-top-45">Unfortunately the event you were looking for could not be found.</p>
              </div>
          @endif
        @endif
        </div>
    </div>
</div>
<!-- Upcomming Match & Video Section End -->

<!-- Match Result Section Start -->

<div class="rs-match-result style1 nav-style pb-100 md-pb-80">
    <div class="container">
        <div class="rs-carousel owl-carousel" data-loop="true" data-items="3" data-margin="30" data-autoplay="true"
            data-autoplay-timeout="8000" data-smart-speed="2000" data-dots="false" data-nav="true"
            data-nav-speed="false" data-mobile-device="1" data-mobile-device-nav="false" data-mobile-device-dots="false"
            data-ipad-device="2" data-ipad-device-nav="false" data-ipad-device-dots="false" data-ipad-device2="1"
            data-ipad-device-nav2="false" data-ipad-device-dots2="false" data-md-device="3" data-md-device-nav="true"
            data-md-device-dots="false">
            @if ($event->count() > 0)
                @foreach ($event as $slider_event)
                @if ($slider_event->match_condition == 2)
                <div class="items">
                    <a href="{{route('eventdetalis', $slider_event->title_slug)}}">
                        <div class="vanues">
                            <div class="stadium">{{$slider_event->studium->studium_name}}</div>
                            <div class="date"><span>{{date("F d, Y",strtotime($slider_event->match_start_date)) }}</span></div>
                        </div>
                        <div class="teams">
                            <div class="logo">
                                <img class="size-80" src="{{asset('uploads')}}/{{isset($slider_event->clubone->logo_image)?$slider_event->clubone->logo_image:''}}"
                                    alt="Manchester City">
                                <div class="name">{{isset($slider_event->clubone->club_name)?$slider_event->clubone->club_name:''}}</div>
                            </div>
                            <div class="score">{{$slider_event->score_one}}-{{$slider_event->score_two}}</div>
                            <div class="logo">
                                <img class="size-80" src="{{asset('uploads')}}/{{isset($slider_event->clubtwo->logo_image)?$slider_event->clubtwo->logo_image:''}}" alt="Barcelona">
                                <div class="name">{{isset($slider_event->clubtwo->club_name)?$slider_event->clubtwo->club_name:''}}</div>
                            </div>
                        </div>
                    </a>
                </div>
                @elseif($slider_event->match_condition == 1)
                <div class="items">
                    <a href="{{route('eventdetalis', $slider_event->title_slug)}}">
                        <div class="vanues">
                            <div class="stadium">{{$slider_event->studium->studium_name}}</div>
                            <div class="date"><span>{{date("F d, Y",strtotime($slider_event->match_start_date)) }}</span></div>
                        </div>
                        <div class="teams">
                            <div class="logo">
                                <img class="size-80" src="{{asset('uploads')}}/{{isset($slider_event->singlematch->logo_image)?$slider_event->singlematch->logo_image:''}}"
                                    alt="Manchester City">
                                <div class="name">{{isset($slider_event->singlematch->club_name)?$slider_event->singlematch->club_name:''}}</div>
                            </div>
                        </div>
                    </a>
                </div>
                 @endif
                @endforeach
            @endif
        </div>
    </div>
</div>
<!-- Match Result Section End -->

<!-- Latest News Section Start -->
<div class="rs-lates-news sec-bg  pb-100 md-pb-80">
    <div class="container">
        <div class="title-style mb-40 md-mb-20 text-center">
            <h2 class="margin-0 uppercase">Latest News</h2>
        </div>
        <div class="row">
                @if (isset($banner_news))
            <div class="col-lg-8 md-mb-30" {{!isset($banner_news)?'style="display:none"':'style="display:none"initial'}}>
                <div class="latest-news-grid">
                    <div class="news-img">
                        <a href="{{route('newsdetails',$banner_news->title_slug)}}"><img src="{{asset('uploads')}}/{{$banner_news->image}}" alt="{{isset($banner_news->alt)?$banner_news->alt:''}}"></a>
                    </div>
                    <div class="news-info">
                        <div class="news-date">
                            <i class="fa fa-calendar-check-o"></i>
                            <span>{{date("F d, Y",strtotime($banner_news->date)) }}</span>
                        </div>
                        <h3 class="news-title">
                            <a href="{{route('newsdetails',$banner_news->title_slug)}}">{{$banner_news->title}}</a>
                        </h3>
                        <div class="news-desc mt-10"> {!!textshorten($banner_news->description,100)!!} </div>
                    </div>
                </div>
            </div>
                @endif
        
                @if ($news_latest->count() > 0)
                <div class="col-lg-4">
                     @foreach ($news_latest as $news_item)
                    <div class="latest-news-grid small-grid mb-3">
                        <div class="news-img">
                            <a href="{{route('newsdetails',$news_item->title_slug)}}"><img src="{{asset('uploads')}}/{{$news_item->image}}" alt="{{isset($news_item->alt)?$news_item->alt:''}}"></a>
                        </div>
                        <div class="news-info">
                            <div class="news-date">
                                <i class="fa fa-calendar-check-o"></i>
                                <span>{{date("F d, Y",strtotime($news_item->date)) }}</span>
                            </div>
                            <h3 class="news-title">
                                <a href="{{route('newsdetails',$news_item->title_slug)}}">{{$news_item->title}}</a>
                            </h3>
                            <div class="news-desc mt-10">{!!textshorten($news_item->description,100)!!} </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                @endif
        </div>
    </div>
</div>
<!-- Latest News Section End -->

<!-- About Us Section Start -->
@if (isset($about_us))

<div class="rs-about bg4 pt-92 pb-78 md-pt-72 md-pb-58">
    <div class="container">
        <div class="row rs-vertical-middle">
            <div class="col-lg-5 md-mb-30">
                <div class="contant-part">
                    <div class="title-style mb-50 md-mb-30">
                        <h2 class="margin-0 uppercase white-color">{{$about_us->title}}</h2>
                        <span class="line-bg left-line y-w pt-10"></span>
                    </div>
                    <div class="description dark-gray-color  text-justify">
                        <p class="mb-3 text-justify">{!!$about_us->description!!}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 margin-0 pl-40 col-padding-md">
                <div class="image-part">
                    <img src="{{asset('uploads')}}/{{$about_us->image}}" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
    
@endif
<!-- About Us Section End -->


<!-- Match Gallery Start -->
<div class="rs-gallery style1 pt-92 pb-100 md-pt-72 sm-pt-20 md-pb-80 sm-pb-0">
    <div class="container">
        <div class="title-style text-center mb-50 md-mb-30">
            <h2 class="margin-0 uppercase">Match Gallery</h2>
            <span class="line-bg y-b pt-10"></span>
        </div>
        <div class="row pl-15 pr-15">
            @if ($gallery_image->count() > 0)
                @foreach ($gallery_image as $gallery_item)
                    <div class="col-lg-4 col-md-6 padding-0 sm-mb-30">
                        <div class="gallery-grid">
                            <img src="{{asset('uploads')}}/{{$gallery_item->gallery_image}}" alt="Gallery Image">
                            <a class="image-popup view-btn" href="{{asset('uploads')}}/{{$gallery_item->gallery_image}}">
                                <i class="flaticon-add-circular-button"></i>
                            </a>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</div>
<!-- Match Gallery End -->
@endsection

@push('js')
<script>
    {!!isset($seo->footer_code)?$seo->footer_code:''!!}
</script>
<script>
    $(document).ready(function(){
    var countdown_first = $('#countdown');
    if(countdown_first.length){
        
        var countDownDate = new Date("{{isset($end_date)?$end_date:""}}").getTime();
        var start_date = new Date("{{isset($start_date)?$start_date:""}}").getTime();

            // Update the count down every 1 second
            var x = setInterval(function() {

            // Get today's date and time
            var now = new Date().getTime();
                
            // Find the distance between now and the count down date
            var distance = start_date - now;
                
            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                
            // Output the result in an element with id="countdown"
            document.getElementById("countdown").innerHTML = "<div>" + days + "<span>days</span>" + "</div>" + "<div>" + hours + "<span>hours</span> " + "</div>"
              + "<div>" + minutes + "<span>minutes</span> " + "</div>" + "<div>" + seconds + "<span>seconds</span>" + "</div>";
                
            // If the count down is over, write some text 
            
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("countdown").innerHTML = "<div>" + 0 + "<span>days</span>" + "</div>" + "<div>" + 0 + "<span>hours</span> " + "</div>"
              + "<div>" + 0 + "<span>minutes</span> " + "</div>" + "<div>" + 0 + "<span>seconds</span>" + "</div>";
              
              document.getElementById("game").innerHTML ="<div>The game is Running.</div>";
            }
        });
    }
    })
</script>
@endpush
