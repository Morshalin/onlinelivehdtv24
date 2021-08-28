@php
    $actual_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
@endphp
<!-- Match Gallery End -->
@extends('game.layouts.app')
@section('title')
<title> {{$news_detalis->seo_title ? $news_detalis->seo_title : $news_detalis->title }} </title>
@endsection
@section('meta')
<meta name="description" content="{{$news_detalis->meta_description}}">
<meta name="keywords" content="{{$news_detalis->meta_keyword}}">
<meta name="title" content="{{$news_detalis->seo_title}}">
@endsection
@section('main')
<!-- Breadcrumbs Section Start -->
<div class="rs-breadcrumbs">
    <div class="breadcrumbs-wrap">
        <img src="{{asset('frontend')}}/images/breadcrumbs/inner7.jpg" alt="Breadcrumbs Image">
        <div class="breadcrumbs-inner">
            <div class="container">
                <div class="breadcrumbs-text">
                    <h1 class="breadcrumbs-title mb-17">{{$news_detalis->title}}</h1>
                    <div class="categories">
                        <ul>
                            <li><a href="{{url('/')}}">Home</a></li>
                            <li><a href="{{route('category',$news_detalis->category->cat_slug_name)}}">{{$news_detalis->category->cat_name}}</a></li>
                            <li class="active">{{$news_detalis->title}}</li>
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
                    <img src="{{asset('uploads')}}/{{$news_detalis->image}}" alt="{{isset($news_detalis->alt)?$news_detalis->alt:''}}">
                </div>
                <div class="single-content-full white-bg">
                    <div class="bs-desc" id="des_ul_style">
                       {!!$news_detalis->description!!}
                        <div class="single-page-info">
                            <!-- <div class="author meta">
                                <i class="flaticon-user-1"></i> {{$news_detalis->user->name}}
                            </div> -->
                            <div class="meta meta-date">
                                <span class="month-day">
                                    <i class="flaticon-clock"></i>{{date("F d, Y",strtotime($news_detalis->date)) }}
                                </span>
                            </div>
                            <div class="meta">
                                <div class="category-name">
                                    <i class="flaticon-folder"></i>
                                    <a href="{{route('category',$news_detalis->category->cat_slug_name)}}">{{$news_detalis->category->cat_name}}</a>
                                </div>
                            </div>
                        </div>
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

@endsection
