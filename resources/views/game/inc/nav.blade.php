<div class="menu-area menu-sticky">
    <div class="container">
        <div class="row rs-vertical-middle">
            <div class="col-lg-2">
                <div class="logo-area">
                    <a class="f-logo" href="{{url('/')}}"><img src="{{asset('storage/logo/'.get_option('logo'))}}" alt="logo"></a>
                    <a class="s-logo" href="{{url('/')}}"><img src="{{asset('storage/logo/'.get_option('logo2'))}}" alt="logo"></a>
                </div>
            </div>
            <div class="col-lg-10 mobile-menu-area">
                <div class="rs-menu-area display-flex-center">
                    <div class="main-menu">
                        <a class="rs-menu-toggle">
                            <i class="fa fa-bars"></i>
                        </a>
                        <nav class="rs-menu nav">
                            <ul class="nav-menu text-right">
                              <li class="{{Route::currentRouteName() == 'front.home' ? 'current-menu-item' : ''}} current_page_item "> <a href="{{url('/')}}" class="home">Home</a>
                                  </li>
                                  <li class="{{Route::currentRouteName() == 'dmca' ? 'current-menu-item' : ''}} "> <a href="{{route('dmca')}}">DMCA</a></li>
                                  <li class="last-item {{Route::currentRouteName() == 'contact' ? 'current-menu-item' : ''}} "><a href="{{route('contact')}}">Contact Us</a></li>
                                  <li class="menu-item-has-children {{Route::currentRouteName([0]) ==['currentevent','upcomingevents','upcomingevents'] ? 'current-menu-item' : ''}}"> <a href="javascript:void(0)">Event</a>
                                        <ul class="sub-menu">  
                                          <li><a href="{{ route('upcomingevents') }}">Upcoming Events</a></li>
                                          <li><a href="{{ route('currentevent') }}">Current Events</a></li>
                                          <li><a href="{{ route('pastevent') }}">Past Events</a></li>
                                      </ul>
                                  </li> 
                                     
                                  @foreach ($all_category as $category) 
                                  
                                      <li class="{{(isset($banner_image)  && $banner_image->cat_slug_name == $category->cat_slug_name) ? 'current-menu-item ': ''}}"><a href="{{route('category',$category->cat_slug_name)}}">{{$category->cat_name}}</a>
                                           @if ($category->sub_category->count() > 0)
                                              <ul class="sub-menu">
                                                  @foreach ($category->sub_category as $sub_categorys)
                                                      <li><a href="{{route('subcategory',$sub_categorys->subcat_slug_name)}}">{{$sub_categorys->subcat_name}}</a></li> 
                                                  @endforeach
                                              </ul>  
                                          @endif
                                      </li> 
                                  @endforeach
                               {{-- <li class="{{(isset($banner_image)  && $banner_image->slug == $banner_image->slug) ? 'current-menu-item ': ''}}"><a href="{{route('category',$banner_image->cat_slug_name)}}">{{$banner_image->cat_name}}</a>
                                          @if ($banner_image->sub_category->count() > 0)
                                              <ul class="sub-menu">
                                                  @foreach ($banner_image->sub_category as $sub_categorys)
                                                      <li><a href="{{route('subcategory',$sub_categorys->subcat_slug_name)}}">{{$sub_categorys->subcat_name}}</a></li> 
                                                  @endforeach
                                              </ul>  
                                          @endif
                                      </li>  --}}
                                  
                              
                                  Pages Menu End
                              
                              </ul> <!-- //.nav-menu -->
                        </nav>
                    </div> <!-- //.main-menu -->
                </div>
            </div>
        </div>
    </div>
</div>
@push('js')
    <script>
        $( 'ul.nav li' ).on( 'click', function() {
            $(this).parent().find('li.current-menu-item').removeClass('current-menu-item');
            $(this).addClass('current-menu-item');
      });
    </script>
@endpush