@extends('layouts.app', ['title' => _lang('Home Page SEO'), 'modal' => 'lg'])
@section('page.header')
  <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> {{_lang('Home Page SEO')}}</h1>
          <p>A free and open source Bootstrap 4 admin template</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">{{_lang('Home Page SEO')}}</a></li>
        </ul>
      </div>
@stop
@section('content')
<!-- Basic initialization -->
      <div class="container">
        <form action="{{route('admin.home-page.store')}}" method="post" id="content_form">
          @csrf
          <div class="row">
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="seo_title">SEO Title</label>
              <input type="hidden" value="{{$model ? $model->id:null}}" class="form-control" name="model_id" id="model_id">
              <input type="text" value="{{$model?$model->seo_title:''}}" class="form-control" name="seo_title" id="seo_title">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                  <label for="meta_keyword">Meta Keyword</label>
                  <input type="text" value="{{$model?$model->meta_keyword:''}}" data-role="tagsinput" class="form-control" name="meta_keyword" id="meta_keyword">
              </div>
            </div>


            <div class="col-sm-12">
              <div class="form-group">
                <label for="meta_description">Meta Description</label>
                <textarea class="form-control" name="meta_description" id="meta_description" cols="3" rows="5">{{$model?$model->meta_description:''}}</textarea>
              </div>
            </div> 

            <div class="col-sm-12">
              <div class="form-group">
                <label for="header_code">JavaScript Header Code</label>
                <textarea class="form-control" name="header_code" id="header_code" rows="12">{{$model?$model->header_code:''}}</textarea>
              </div>
            </div>  

            <div class="col-sm-12">
              <div class="form-group">
                <label for="footer_code">JavaScript Footer Code</label>
                <textarea class="form-control" name="footer_code" id="footer_code" rows="12">{{$model?$model->footer_code:''}}</textarea>
              </div>
            </div>

            </div>
            <div class="row">
                <div class=" col-sm-6 toggle lg">
            
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
<script src="{{ asset('js/pages/setting.js') }}"></script>

@endpush