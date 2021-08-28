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
<title> Sports | {{$banner_image->subcat_name}} </title>
@endsection
@section('meta')
<meta name="description" content="{{$banner_image->meta_description}}">
<meta name="keywords" content="{{$banner_image->meta_keyword}}">
@endsection
@section('main')
<!-- Breadcrumbs Section Start -->
<div class="rs-breadcrumbs">
    <div class="breadcrumbs-wrap">
    <img src="{{asset('uploads')}}/{{$banner_image->banner_image}}" alt="Breadcrumbs Image">
        <div class="breadcrumbs-inner">
            <div class="container">
                <div class="breadcrumbs-text">
                    <h1 class="breadcrumbs-title mb-17"> </h1>
                    <div class="categories">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Section End -->

<!-- Upcomming Match & Video Section Start -->
<div class="couter-and-upcomming pt-100 md-pt-80 mb-30">
    <div class="container">
        @if (isset($upcoming_match) || isset($alter_match))   
        <div class="row">
            @if (isset($upcoming_match->match_condition) && $upcoming_match->match_condition == 2)
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
                            <a class="play-btn btn" href="{{route('eventdetalis', $upcoming_match->title_slug)}}"><i
                                    class="fa fa-play"></i></a>
                            <h3 class="title white-color mt-18 mb-0">Watch Now</h3>
                        </div>
                    </div>
                </div>
                @elseif (isset($upcoming_match->match_condition) && $upcoming_match->match_condition == 1)
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
                        <div class="teams mt-25 md-mt-50">
                            <div class="row rs-vertical-middle" style="font-size:20px">
                                <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                    <div class="team-logo">
                                        <img class="size-80" src="{{asset('uploads')}}/{{isset($upcoming_match->singlematch->logo_image)?$upcoming_match->singlematch->logo_image:''}}"
                                            alt="Valencia">
                                        <div class="name white-color">{{isset($upcoming_match->singlematch->club_name)?$upcoming_match->singlematch->club_name:''}}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="match-info mt-28" style="font-size:18px">
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


                 @elseif (isset($alter_match->match_condition) && $alter_match->match_condition == 2)
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
                        <div class="teams mt-25 md-mt-50">
                            <div class="row rs-vertical-middle">
                                <div class="col-md-4 col-sm-4 col-4">
                                    <div class="team-logo">
                                        <img class="size-80" src="{{asset('uploads')}}/{{isset($alter_match->clubone->logo_image)?$alter_match->clubone->logo_image:''}}"
                                            alt="Valencia">
                                        <div class="name white-color">{{isset($alter_match->clubone->club_name)?$alter_match->clubone->club_name:''}}</div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-4">
                                    <div class="versase">VS</div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-4">
                                    <div class="team-logo">
                                        <img class="size-80" src="{{asset('uploads')}}/{{isset($alter_match->clubtwo->logo_image)?$alter_match->clubtwo->logo_image:''}}"
                                            alt="Real Sociedad">
                                        <div class="name white-color">{{isset($alter_match->clubtwo->club_name)?$alter_match->clubtwo->club_name:''}}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="match-info mt-28">
                            <ul>
                                <li>{{$alter_match->studium->studium_name}}</li>
                                <li>{{date("F d, Y",strtotime($alter_match->match_start_date)) }}</li>
                            </ul>
                             <span class="text-center text-white my-2">{{$alter_match->category->cat_name}}</span>
                            <a href="{{route('eventdetalis', $alter_match->title_slug)}}"><div class="time pt-15 white-color">See Detalis</div><a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 pl-30 col-padding-md">
                    <div class="rs-video big-space bg2 bdru-4 text-center" style="background-image: url({{asset('uploads')}}/{{$alter_match->thumbnail_image}});">
                        <div class="video-contents">
                            <a class="play-btn btn" href="{{route('eventdetalis', $alter_match->title_slug)}}"><i
                                    class="fa fa-play"></i></a>
                            <h3 class="title white-color mt-18 mb-0">Watch Now</h3>
                        </div>
                    </div>
                </div>
                @elseif (isset($alter_match->match_condition) && $alter_match->match_condition == 1)
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
                        <div class="teams mt-25 md-mt-50">
                            <div class="row rs-vertical-middle" style="font-size:20px">
                                <div class="col-md-12 col-sm-12 col-12 mx-auto">
                                    <div class="team-logo">
                                        <img class="size-80" src="{{asset('uploads')}}/{{isset($alter_match->singlematch->logo_image)?$alter_match->singlematch->logo_image:''}}"
                                            alt="Valencia">
                                        <div class="name white-color">{{isset($alter_match->singlematch->club_name)?$alter_match->singlematch->club_name:''}}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="match-info mt-28" style="font-size:18px">
                            <ul>
                                <li>{{$alter_match->studium->studium_name}}</li>
                                <li>{{date("F d, Y",strtotime($alter_match->match_start_date)) }}</li>
                            </ul>
                            <span class="text-center text-white my-2">{{$alter_match->category->cat_name}}</span>
                            <a href="{{route('eventdetalis', $alter_match->title_slug)}}"><div class="time pt-15 white-color">See Detalis</div><a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 pl-30 col-padding-md">
                    <div class="rs-video big-space bg2 bdru-4 text-center" style="background-image: url({{asset('uploads')}}/{{$alter_match->thumbnail_image}});">
                        <div class="video-contents">
                            <a class="play-btn btn" href="{{route('eventdetalis', $alter_match->title_slug)}}"><i
                                    class="fa fa-play"></i></a>
                            <h3 class="title white-color mt-18 mb-0">Watch Now</h3>
                        </div>
                    </div>
                </div>

            @endif
              
        </div>
        @else
            <div class="col-lg-12 text-center">
                <h1 class="text-regular font-accent text-primary text-italic"><span class="big"></span></h1>
                <h1>This Category has no Event.</h1><a class="btn btn-warning offset-top-25" href="{{url('/')}}">Visit home page</a>
                <hr class="divider divider-dashed offset-top-60">
                <p class="offset-top-45">Unfortunately the event you were looking for could not be found.</p>
              </div>
        @endif

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
                @elseif ($slider_event->match_condition == 1)
                    <div class="items">
                    <a href="{{route('eventdetalis', $slider_event->title_slug)}}">
                        <div class="vanues">
                            <div class="stadium">{{$slider_event->studium->studium_name}}</div>
                            <div class="date"><span>{{date("F d, Y",strtotime($slider_event->match_start_date)) }}</span></div>
                        </div>
                        <div class="teams mx-auto">
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
<div class="rs-lates-news sec-bg pt-91 pb-100 md-pt-71 md-pb-80">
    <div class="container">
        <div class="title-style mb-40 md-mb-20 text-center">
            <h2 class="margin-0 uppercase">Latest News</h2>
        </div>
        @if ($random_latest->count() > 0 )
        <div class="row">

            @if ($banner_news)
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
                                <span>{{date('d F Y', $news_item->data)}}</span>
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
        @else
            <div class="row">
                <div class="col">
                    <div class="col-lg-12 text-center">
                        <h1 class="text-regular font-accent text-primary text-italic"><span class="big"></span></h1>
                        <h1>This Category has no latest News.</h1><a class="btn btn-warning offset-top-25" href="{{url('/')}}">Visit home page</a>
                        <hr class="divider divider-dashed offset-top-60">
                        <p class="offset-top-45">Unfortunately the latest News you were looking for could not be found.</p>
                      </div>
                </div>
            </div>
        @endif
    </div>
</div>
<!-- Latest News Section End -->

@endsection
@push('js')
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