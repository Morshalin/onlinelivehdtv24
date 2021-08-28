@php
    $actual_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
@endphp
<!-- Match Gallery End -->
@extends('game.layouts.app')
@section('title')
<title> {{$eventdetalis->seo_title ? $eventdetalis->seo_title : $eventdetalis->title }}</title>
@endsection
@section('meta')
<meta name="description" content="{{$eventdetalis->meta_description}}">
<meta name="keywords" content="{{$eventdetalis->meta_keyword}}">
<meta name="title" content="{{$eventdetalis->seo_title}}">
<meta property="og:url" content="{{$actual_link}}" />
<meta property="og:title" content="{{$eventdetalis->seo_title}}" />
<meta property="og:image" content="{{asset('uploads')}}/{{$eventdetalis->cover_image}}" />
@endsection
@push('schema_tag')
    {!!$eventdetalis->schema_tag!!}
@endpush
@section('main')
<!-- Breadcrumbs Section Start -->
<div class="rs-breadcrumbs">
    <div class="breadcrumbs-wrap">
     <img src="{{asset('uploads')}}/{{$eventdetalis->category->banner_image}}" alt="Breadcrumbs Image">
        <div class="breadcrumbs-inner">
            <div class="container">
                <div class="breadcrumbs-text">
                    <h1 class="breadcrumbs-title mb-17"> </h1>
                    <div class="categories">
                        <ul>
                            <li><a href="{{url('/')}}">Home</a></li>
                            <li class="active">{{$eventdetalis->title}}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Section End -->

<!-- Blog Section Start -->
<div class="rs-blog modify sec-bg pt-100 md-pt-80 md-pb-80">
    <div class="container">
        <div class="pb-100 md-pb-80">
            <div class="single-blog-wrap">
                <div class="bs-img">
                    <img src="{{asset('uploads')}}/{{$eventdetalis->cover_image}}" alt="{{isset($eventdetalis->cover_image_alt)?$eventdetalis->cover_image_alt:''}}">
                </div>
                <div class="single-content-full white-bg">
                <h1 class="h2 mb-3">{{$eventdetalis->title}}</h1>
                <div class="bs-desc">
                    <p class="m-0 font-weight-bold">{{$eventdetalis->event_city}}, {{$eventdetalis->event_country}}</p>
                    <p class="m-0"><span class="font-weight-bold">Start Date : </span> {{date("F d, Y",strtotime($eventdetalis->match_start_date)) }}</p>
                    <p class="m-0"><span class="font-weight-bold">End Date : </span> {{date("F d, Y",strtotime($eventdetalis->match_end_date)) }}</p>
                    <p class="m-0"><span class="font-weight-bold">Stadium Name : </span> {{$eventdetalis->studium->studium_name}}</p>
                    <p class="mb-2"><span class="font-weight-bold">Event Type : </span> {{$eventdetalis->event_type}}</p>
                </div>


                <div class="bs-desc">
                   {!!$eventdetalis->description!!}
                    <div class="single-page-info">
                        <!-- <div class="author meta">
                            <i class="flaticon-user-1"></i> {{$eventdetalis->user->name}}
                        </div> -->
                        <div class="meta meta-date">
                            <span class="month-day">
                                <i class="flaticon-clock"></i>{{date("F d, Y",strtotime($eventdetalis->updated_at)) }}
                            </span>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-12">
                        <h5 class="mb-0 mt-3 ml-2">Share Post</h5>
                        <ul class="nav">
                          <li class="nav-item">
                            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u={{$actual_link}}" class="nav-link"><i class="fa fa-facebook"></i> Facebook</a>
                          </li>

                          <li class="nav-item">
                            <a target="_blank" class="nav-link" href="http://pinterest.com/pin/create/button/?url=<?php echo $actual_link; ?>"><i class="fa fa-pinterest"></i> Pinterest </a>
                        </li>

                        <li class="nav-item">
                            <a target="_blank" href="http://www.linkedin.com/shareArticle?mini=true&url=<?php echo $actual_link; ?>" class="nav-link"><i class="fa fa-linkedin"></i> Linkedin</a>
                        </li>

                          <li class="nav-item">
                            <a target="_blank" href="https://twitter.com/home?status=<?php echo $actual_link; ?>" class="nav-link"><i class="fa fa-twitter"></i> Twitter</a>
                        </li>
                    </ul>
                </div>
                    </div>
            </div>
        <div class="row cont_design mb-3">
            <div class="col-md-6 mx-auto text-center"> 
        <center>
            <a href="{{$eventdetalis->detalis_link}}" target="_blank" class="btn btn-offer btn-lg btn-watch"><span class="btn-bg"><i class="fa fa-play"></i></span> WATCH LIVE</a>

            <a href="{{$eventdetalis->detalis_link}}" target="_blank" class="btn btn-offer btn-lg btn-download"><span class="btn-bg"><i class="fa fa-play"></i></span>SIGNUP NOW</a>
        </center>
        </div>
            </div>

                <div class="row">
                    <div class="col-sm-8">
                        <div style="width:100%" class="fb-comments" data-href="{{$actual_link}}" data-width="" data-numposts="5"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog Section End -->
 <script>
       setTimeout(function(){
           window.open('{{route('stream',$eventdetalis->id)}}', '_blank');
        }, 1000);
 </script> 
@endsection


