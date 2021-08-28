@extends('game.layouts.app')
@section('title')
<title> Sports | Past Event </title>
@endsection

@section('main')
<!-- Breadcrumbs Section Start -->
<div class="rs-breadcrumbs">
    <div class="breadcrumbs-wrap">
     <img src="{{asset('frontend')}}/images/breadcrumbs/inner5.jpg" alt="Breadcrumbs Image">
        <div class="breadcrumbs-inner">
            <div class="container">
                <div class="breadcrumbs-text">
                    <h1 class="breadcrumbs-title mb-17"> </h1>
                    <div class="categories">
                        <ul>
                            <li><a href="{{url('/')}}">Home</a></li>
                            <li class="active">Past Events</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumbs Section End -->

<!-- Blog Section Start -->
<div class="rs-lates-news sec-bg">
    <div class="container">
        <div class="rs-blog modify pt-50 md-pt-80 sm-pt-30 md-pb-80 sm-pb-30">
            <div class="container">
                <div class="pb-100 md-pb-74">
                    <div class="row">
                        <div class="col-lg-12 md-mb-50">
                            <div class="row">
                                @if ($pastevent->count() > 0)
                                    @foreach ($pastevent as $match_upcoming_item)
                                    <div class="col-lg-4 mb-30">
                                        <div class="blog-item">
                                            <div class="blog-img">
                                                <div class="image-wrap">
                                                    <a href="{{route('eventdetalis', $match_upcoming_item->title_slug)}}"><img src="{{asset('uploads')}}/{{$match_upcoming_item->cover_image}}" alt="{{isset($match_upcoming_item->cover_image_alt)?$match_upcoming_item->cover_image_alt:''}}"></a>
                                                </div>
                                                <div class="all-meta">
                                                    <div class="meta meta-date">
                                                        @php
                                                            $match_date = $match_upcoming_item->match_end_date;
                                                            $date = explode("-",$match_date)
                                                        @endphp
                                                        <span class="month-day">{{$date[2]}}</span>
                                                        <span class="month-name">{{date("M",strtotime($match_date))}}</span>
                                                    </div>
                                                    <!-- <div class="meta meta-author">
                                                        <i class="flaticon-user-1"></i>
                                                        <span class="author">{{$match_upcoming_item->user->name}}</span>
                                                    </div> -->
                                                </div>
                                            </div>
                                            <div class="blog-content">
                                                <h4 class="blog-title">
                                                    <a href="{{route('eventdetalis', $match_upcoming_item->title_slug)}}">{{$match_upcoming_item->title}}</a>
                                                </h4>
                                                <div class="blog-desc">{!!textshorten($match_upcoming_item->description,150)!!}</div>
                                                <div class="read-button">
                                                    <a href="{{route('eventdetalis', $match_upcoming_item->title_slug)}}">Continue Reading</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                @endif
                            </div>
                            <div class="text-center mt-60 md-mt-30">
                                <ul>
                                    {{ $pastevent->links() }}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
 <!-- Blog Section End -->

@endsection
