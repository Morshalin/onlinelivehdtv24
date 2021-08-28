@extends('layouts.app', ['title' => _lang('Latest News'), 'modal' => 'lg'])
@section('page.header')
  <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> {{_lang('Latest News')}}</h1>
          <p>A free and open source Bootstrap 4 admin template</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">{{_lang('Latest News')}}</a></li>
        </ul>
      </div>
@stop
@section('content')
<!-- Basic initialization -->
      <div class="container">
        <form action="{{route('admin.news.store')}}" method="post" id="newform">
          @csrf
          
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                <label for="category_id">Category</label>
                 <select data-placeholder="Select One" name="category_id" id="category_id" class="form-control select">
                     <option value="">Select One</option>
                     @foreach ($models as $cat_item)
                        <option value="{{$cat_item->id}}">{{$cat_item->cat_name}}</option>
                     @endforeach
                 </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="subcategory_id">Sub Category</label>
                 <select data-placeholder="Select One" name="subcategory_id" id="subcategory_id" class="form-control select">
                     <option value="">Select One</option>
                    
                 </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="title">Title</label>
                  <input type="text" class="form-control" name="title" id="title">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label for="title_slug">Title Slug</label>
                  <input type="text" class="form-control" name="title_slug" id="title_slug">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="image">Image</label>
                  <input type="file" class="form-control" name="image" id="image">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="alt_tag">Alt Tag</label>
                  <input type="text" class="form-control" name="alt_tag" id="alt_tag">
              </div>
            </div>
            <div class="col-sm-12">
              <div class="form-group">
              <textarea class="form-control" name="description" id="description" rows="2"></textarea>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="date">News Date</label>
                  <input type="text" readonly="" autocomplete="off" class="form-control date" name="date" id="date">
              </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="meta_keyword">Meta Keyword</label>
                    <input class="form-control" data-role="tagsinput" id="meta_keyword" name="meta_keyword" type="text">
                </div>
            </div>
            <div class="col-sm-12">
              <div class="form-group">
                  <label for="seo_title">Seo Title</label>
                  <input type="text"  class="form-control" name="seo_title" id="seo_title">
              </div>
            </div>
            <div class="col-sm-12">
                <div class="form-group">
                    <label for="meta_description">Meta Description</label>
                    <textarea class="form-control" name="meta_description" id="meta_description" rows="2" placeholder="Meta Description"></textarea>
                </div>
            </div>
            </div>
            <div class="row">
                <div class=" col-sm-6 toggle lg">
                    <label>
                        <input type="checkbox" checked="" name="status" id="status"><span class="button-indecator"></span>
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
var editor = CKEDITOR.replace( 'description' );
var _formValidation = function() {
    if ($('#newform').length > 0) {
        $('#newform').parsley().on('field:validated', function() {
            var ok = $('.parsley-error').length === 0;
            $('.bs-callout-info').toggleClass('hidden', !ok);
            $('.bs-callout-warning').toggleClass('hidden', ok);
        });
    }

    $('#newform').on('submit', function(e) {
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
            success: function(data) {
                if (data.status == 'danger') {
                    toastr.error(data.message);

                } else {
                    toastr.success(data.message);
                    $('#submit').show();
                    $('#submiting').hide();
                    $('#newform')[0].reset();
                    if (data.goto) {
                        setTimeout(function() {

                            window.location.href = data.goto;
                        }, 2500);
                    }

                    if (data.window) {
                        $('#newform')[0].reset();
                        window.open(data.window, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=auto,left=auto,width=700,height=400");
                        setTimeout(function() {
                            window.location.href = '';
                        }, 1000);
                    }

                    if (data.load) {
                        setTimeout(function() {

                            window.location.href = "";
                        }, 2500);
                    }
                }
            },
            error: function(data) {
                var jsonValue = $.parseJSON(data.responseText);
                const errors = jsonValue.errors;
                if (errors) {
                    var i = 0;
                    $.each(errors, function(key, value) {
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

$(document).ready(function(){

    $(document).on('change',"#category_id",function(){
        var cat_id = $(this).val();
        $.ajax({ 
            url:"{{route('admin.allsubcategory')}}",
            method:"get",
            dataType:"html",
            data:{cat_id:cat_id},
            success:function(data){
                $("#subcategory_id").html(data);
            }
        });
    });
    
   /* $(document).on('keyup change',"#title",function(){
        var cat_id = $(this).val();
        $('#title_slug').val(cat_id);
    });*/

});
</script>
@endpush