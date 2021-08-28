@extends('layouts.app', ['title' => _lang('Slider'), 'modal' => 'lg'])
@section('page.header')
  <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> {{_lang('Slider')}}</h1>
          <p>A free and open source Bootstrap 4 admin template</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="#">{{_lang('Slider')}}</a></li>
        </ul>
      </div>
@stop
@section('content')
<!-- Basic initialization -->
  <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">
              <a href="{{ route('admin.slider.create') }}" class="btn btn-info"><i class="icon-stack-plus mr-2"></i>{{_lang('create')}}</a>
            </h3>
            <div class="tile-body">
             <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th width="5%">{{_lang('So.')}}</th>
                    <th width="10%">{{_lang('Position')}}</th>
                    <th width="15%">{{_lang('Title')}}</th>
                    <th width="15%">{{_lang('Sub-title')}}</th>
                    <th width="25%">{{_lang('Description')}}</th>
                    <th width="10%">{{_lang('Image One')}}</th>
                    <th width="10%">{{_lang('Image Two')}}</th>
                    <th width="5%">{{_lang('Status')}}</th>
                    <th width="5%">{{_lang('action')}}</th>
                  </tr>
                </thead>
                @foreach ($models as $key=> $item) 
                  <tr>
                    <td>{{$key+1 }}</td>
                    <td>
                      @if ($item->position==1)
                          <span class="text-success">Slider Left</span>
                      @else
                         <span class="text-success">Slider Right</span>
                      @endif
                    </td>
                    <td>{{$item->title}}</td>
                    <td>{{$item->sub_title}}</td>
                    <td>{{$item->description}}</td>
                    <td><img src="{{asset('uploads')}}/{{$item->image_one}}" alt="" width="70" height="30" ></td>
                    <td><img src="{{asset('uploads')}}/{{$item->image_two}}" alt="" width="70" height="30" ></td>
                    <td>
                      @if ($item->status == 1)
                          <span class="badge badge-success">Active</span>
                          @else
                          <span class="badge badge-danger">Inactive</span>
                      @endif
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                         <i class="fa fa-list" aria-hidden="true"></i>
                        </button>
                        <div class="dropdown-menu">
                        <a class="dropdown-item" href="{{route('admin.slider.edit', $item->id)}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                        <span data-id="{{$item->id}} " data-url="{{route('admin.slider.destroy',$item->id)}} " id="delete_item"><a href="" class="dropdown-item"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></span>
                        </div>
                      </div>
                    </td>
                 </tr>
                @endforeach
                <tbody>

                </tbody>
             
               </table>
             </div>
          </div>
      </div>
  </div>
<!-- /basic initialization -->
@stop
@push('scripts')
<script type="text/javascript" src="{{asset('backend/js/plugins/jquery.dataTables.min.js')}}"></script>
<script type="text/javascript" src="{{asset('backend/js/plugins/dataTables.bootstrap.min.js')}}"></script>
<script src="{{ asset('js/pages/setting.js') }}"></script>
@endpush

