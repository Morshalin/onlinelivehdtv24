<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\HomePage;

class HomePageController extends Controller
{
    public function index(){
    	$model = HomePage::first();
        return view('admin.seo.index',compact('model'));
    }

    public function store(Request $request){
    	
        $validatedData = $request->validate([
            'seo_title'=>'required',
            'meta_keyword'=>'required',
            'meta_description'=>'required',
            'header_code'=>'',
            'footer_code'=>'',
        ]);

       if(isset($request->model_id) && !empty($request->model_id)){
          $models = HomePage::findOrFail($request->model_id);
          $models->update($validatedData);
          return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Infromation Update Successfuly'), 'goto' => route('admin.home-page.seo')]);
       }else{
       		$model = new HomePage();
            $model->create($validatedData);
            return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Infromation Added Successfuly'), 'goto' => route('admin.home-page.seo')]);
       }
    }
}
