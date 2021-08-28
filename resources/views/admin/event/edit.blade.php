@extends('layouts.app', ['title' => _lang('Events'), 'modal' => 'lg'])
@section('page.header')
  <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> {{_lang('Events')}}</h1>
          <p>A free and open source Bootstrap 4 admin template</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">{{_lang('Events')}}</a></li>
        </ul>
      </div>
@stop
@section('content')
<!-- Basic initialization -->
      <div class="container">
        <form action="{{route('admin.event.update', $model->id)}}" method="post" id="newform">
          @csrf
          @method('PUT')
          <div class="form-control">
            <div class="row">
                <div class="col-sm-12 text-center my-3"><span class="text-info h3 border border-success p-2">Upcoming
                        Match</span></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="match_condition">Match Condition</label>
                        <select data-placeholder="Select One" name="match_condition" id="match_condition"
                            class="form-control select selectpicker" data-live-search="true" data-show-subtext="true">
                            <option value="">Select One</option>
                            @if ($model->match_condition == 1)
                            <option selected="Selected" value="1">Singale Match</option>
                            <option value="2">Double Match</option>
                            @else
                            <option  value="1">Singale Match</option>
                            <option selected="Selected" value="2">Double Match</option>
                            @endif
                        </select>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="category_id">Category</label>
                        <select data-placeholder="Select One" name="category_id" id="category_id"
                            class="form-control select selectpicker" data-live-search="true" data-show-subtext="true">
                            <option value="">Select One</option>
                            @foreach ($category as $cat_item)
                            <option {{$model->category_id== $cat_item->id?'Selected':''}} value="{{$cat_item->id}}">{{$cat_item->cat_name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="subcategory_id">Sub Category</label>
                        <select data-placeholder="Select One" name="subcategory_id" id="subcategory_id"
                            class="form-control select selectpicker" data-live-search="true" data-show-subtext="true">
                            <option value="{{isset($model->subcategory_id)?$model->subcategory_id:""}}">{{isset($model->subcategory_id)?$model->subcategory->subcat_name:""}}</option>

                        </select>
                    </div>
                </div>
            </div>


            @if ($model->match_condition == 1)
            <div id="single_match" class="mx-auto">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group col-md-12">
                            <label for="single_club">Game Name</label> <br>
                            <select data-placeholder="Select One" name="single_club" id="single_club"
                                class="form-control select" style="width: 100%">
                                <option value="">Select One</option>
                                @foreach ($club as $club_item)
                                <option {{$model->single_club == $club_item->id?"selected":""}} value="{{$club_item->id}}">{{$club_item->club_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            @else
            <div id="double_match">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label for="clubone_id">Club One</label>
                            <select data-placeholder="Select One" name="clubone_id" id="clubone_id"
                                class="form-control select" style="width: 100%">
                                <option value="">Select One</option>
                                @foreach ($club as $club_item)
                                <option {{$model->clubone_id == $club_item->id?"selected":""}} value="{{$club_item->id}}">{{$club_item->club_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-2 text-center" style="margin-top:25px;"><span class="text-danger h2 ">VS</span>
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label for="clubtwo_id">Club Two</label>
                            <select data-placeholder="Select One" name="clubtwo_id" id="clubtwo_id"
                                class="form-control select" style="width: 100%">
                                <option value="">Select One</option>
                                @foreach ($club as $club_item)
                                <option {{$model->clubtwo_id == $club_item->id?"selected":""}} value="{{$club_item->id}}">{{$club_item->club_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
    <div class="form-control my-4">
        <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="studium_id">Stadium Name</label>
                 <select data-placeholder="Select One" name="studium_id" id="studium_id" class="form-control select selectpicker" data-live-search="true" data-show-subtext="true">
                     <option value="">Select One</option>
                     @foreach ($studium as $studium_item)
                        <option {{$model->studium_id==$studium_item->id?"Selected":""}} value="{{$studium_item->id}}">{{$studium_item->studium_name}}</option>
                     @endforeach
                 </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" name="title" id="title" value="{{$model->title}}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="title_slug">Title Slug</label>
                  <input type="text" class="form-control" name="title_slug" id="title_slug" value="{{$model->title_slug}}" >
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group">
                  <label for="cover_image">Cover cover_image</label>
                  <input type="file" class="form-control" name="cover_image" id="image">
              </div>
            </div>

             <div class="col-sm-3">
                    <div class="form-group">
                        <label for="cover_image_alt">Alt Tag</label>
                        <input type="text" class="form-control" value="{{$model->cover_image_alt}}" name="cover_image_alt" id="cover_image_alt">
                    </div>
                </div>

            <div class="col-sm-3">
              <div class="form-group">
                  <label for="thumbnail_image">Thumbnail Image</label>
                  <input type="file" class="form-control" name="thumbnail_image" id="thumbnail_image">
              </div>
            </div>

            <div class="col-sm-3">
                    <div class="form-group">
                        <label for="thumbnail_image_alt">Alt Tag</label>
                        <input type="text" class="form-control" value="{{$model->thumbnail_image_alt}}" name="thumbnail_image_alt" id="thumbnail_image_alt">
                    </div>
                </div>

            <div class="col-sm-6">
              <div class="form-group">
                <label for="event_start_date">Event Start Date</label>
                  <input type="text" readonly="" autocomplete="off" class="form-control date" name="event_start_date" id="event_start_date" value="{{$model->event_start_date}}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="event_end_date">Event End Date</label>
                  <input type="text" readonly="" autocomplete="off" class="form-control date" name="event_end_date" id="event_end_date" value="{{$model->event_end_date}}">
              </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group">
                <label for="match_start_date">Match Start Date</label>
                  <input type="text" readonly="" autocomplete="off" class="form-control date" name="match_start_date" id="match_start_date" value="{{$model->match_start_date}}">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="match_end_date">Match End Date</label>
                  <input type="text" readonly="" autocomplete="off" class="form-control date" name="match_end_date" id="match_end_date" value="{{$model->match_end_date}}">
              </div>
            </div>
            
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="video_link">Live Stream Title </label>
                    <input type="text" class="form-control" name="video_link" value="{{$model->video_link}}" id="video_link">
                </div>
            </div>


            <div class="col-sm-12">
              <div class="form-group">
                  <label for="detalis_link">Detalis Link</label>
                  <input type="text" class="form-control" name="detalis_link" id="detalis_link" value="{{$model->detalis_link}}">
              </div>
            </div>

            <div class="col-sm-12">
              <div class="form-group">
              <textarea class="form-control" name="description" id="description" rows="2">{{$model->description}}</textarea>
              </div>
            </div>

             <div class="col-sm-6">
                    <div class="form-group">
                        <label for="seo_title">Seo Title</label>
                        <input class="form-control" id="seo_title" name="seo_title" type="text" value="{{$model->seo_title}}">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="event_type">Event Type</label>
                        <input class="form-control" id="event_type" name="event_type" value="{{$model->event_type}}" type="text">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="event_country">Event Country</label>
                        <input class="form-control" id="event_country" name="event_country" value="{{$model->event_country}}" type="text">
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="event_city">Event City</label>
                        <input class="form-control"  id="event_city" name="event_city" value="{{$model->event_city}}" type="text">
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="total_event">Total Event</label>
                        <input class="form-control" value="{{$model->total_event}}"  id="total_event" name="total_event" type="text">
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="schema_tag">Schema Tag</label>
                        <textarea name="schema_tag" id="schema_tag" cols="30" rows="10" class="form-control">{{$model->schema_tag}}</textarea>
                    </div>
                </div>
            
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="meta_keyword">Meta Keyword</label>
                    <input class="form-control" data-role="tagsinput" id="meta_keyword" name="meta_keyword" type="text" value="{{$model->meta_keyword}}">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="meta_description">Meta Description</label>
                    <textarea class="form-control" name="meta_description" id="meta_description" rows="2" placeholder="Meta Description">{{$model->meta_description}}</textarea>
                </div>
            </div>
        </div>
    </div>    
    <div class="row">
        <div class=" col-sm-6 toggle lg">
            <label>
                @if($model->status == 0)
                <input type="checkbox" name="status" id="status"><span class="button-indecator">
                @else
                 <input type="checkbox" checked="" name="status" id="status"><span class="button-indecator">
                @endif
            </label>
        </div>
        <div class="col-sm-6 toggle lg">
        <label class="float-right">
            <button class="btn btn-primary" type="submit">Submit</button>
        </label>
        </div>
    </div>
</form> 
</div>
<!-- /basic initialization -->
@stop
@push('scripts')
<script type="text/javascript" src="{{asset('backend/js/plugins/jquery.dataTables.min.js')}}"></script>
<script type="text/javascript" src="{{asset('backend/js/plugins/dataTables.bootstrap.min.js')}}"></script>
<script src="{{ asset('js/pages/common.js') }}"></script>

<script>
    $(document).ready(function(){
        $(document).on("change", "#match_condition", function(){
            var condition = $(this).val();
           if(condition == 1){
               $("#single_match").show(1000);
               $("#double_match").hide(1000);
           }else if(condition == 2){
                $("#single_match").hide(1000);
               $("#double_match").show(1000);
           }
        });
    });
</script>

<script>
    var editor = CKEDITOR.replace('description');
    var _formValidation = function () {
        if ($('#newform').length > 0) {
            $('#newform').parsley().on('field:validated', function () {
                var ok = $('.parsley-error').length === 0;
                $('.bs-callout-info').toggleClass('hidden', !ok);
                $('.bs-callout-warning').toggleClass('hidden', ok);
            });
        }

        $('#newform').on('submit', function (e) {
            e.preventDefault();
            $('#submit').hide();
            $('#submiting').show();
            $(".ajax_error").remove();
            var submit_url = $('#newform').attr('action');
            //Start Ajax
            var formData = new FormData($("#newform")[0]);
            formData.append('description', editor.getData());
            $.ajax({
                url: submit_url,
                type: 'POST',
                data: formData,
                contentType: false, // The content type used when sending data to the server.
                cache: false, // To unable request pages to be cached
                processData: false,
                dataType: 'JSON',
                success: function (data) {
                    if (data.status == 'danger') {
                        toastr.error(data.message);

                    } else {
                        toastr.success(data.message);
                        $('#submit').show();
                        $('#submiting').hide();
                        $('#newform')[0].reset();
                        if (data.goto) {
                            setTimeout(function () {

                                window.location.href = data.goto;
                            }, 2500);
                        }

                        if (data.window) {
                            $('#newform')[0].reset();
                            window.open(data.window, "_blank",
                                "toolbar=yes,scrollbars=yes,resizable=yes,top=auto,left=auto,width=700,height=400"
                                );
                            setTimeout(function () {
                                window.location.href = '';
                            }, 1000);
                        }

                        if (data.load) {
                            setTimeout(function () {

                                window.location.href = "";
                            }, 2500);
                        }
                    }
                },
                error: function (data) {
                    var jsonValue = $.parseJSON(data.responseText);
                    const errors = jsonValue.errors;
                    if (errors) {
                        var i = 0;
                        $.each(errors, function (key, value) {
                            const first_item = Object.keys(errors)[i]
                            const message = errors[first_item][0];
                            if ($('#' + first_item).length > 0) {
                                $('#' + first_item).parsley().removeError('required', {
                                    updateClass: true
                                });
                                $('#' + first_item).parsley().addError('required', {
                                    message: value,
                                    updateClass: true
                                });
                            }
                            // $('#' + first_item).after('<div class="ajax_error" style="color:red">' + value + '</div');
                            toastr.error(value);
                            i++;
                        });
                    } else {
                        toastr.warning(jsonValue.message);

                    }
                    _componentSelect2Normal();
                    $('#submit').show();
                    $('#submiting').hide();
                }
            });
        });
    };

    $(document).ready(function () {

        $(document).on('change', "#category_id", function () {
            var cat_id = $(this).val();
            $.ajax({
                url: "{{route('admin.allsubcategory')}}",
                method: "get",
                dataType: "html",
                data: {
                    cat_id: cat_id
                },
                success: function (data) {
                    $("#subcategory_id").html(data);
                    $("#subcategory_id").trigger("change");
                }
            });
        });

        /*$(document).on('keyup change', "#title", function () {
            var cat_id = $(this).val();
            $('#title_slug').val(cat_id);
        });
*/
    });

</script>
@endpush