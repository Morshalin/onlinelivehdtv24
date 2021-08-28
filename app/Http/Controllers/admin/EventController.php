<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Carbon\Carbon;
use App\Event;
use App\Category;
use App\Studium;
use App\Club;
use Auth;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $models = Event::all();
        return view('admin.event.index',compact('models'));        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        $category = Category::all();
        $studium = Studium::all();
        $club = Club::all();
        return view('admin.event.create',compact('category','studium','club'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
        if ($request->event_start_date > $request->event_end_date) {
            return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('The event start date must be less than the event end date.')]);
        }

         if ($request->match_start_date > $request->match_end_date) {
            return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('The game start date must be less than the game end date.')]);
        }

        $forcheck = Event::where('category_id',$request->category_id)->Where('subcategory_id', $request->subcategory_id)->get();
        if ($forcheck) {
             $e_start_date= "";
             $g_start_date= "";
             $e_end_date = "";
             $g_end_date = "";
           foreach ($forcheck as $value) {
                $e_start_date = $value->event_start_date;
                $e_end_date = $value->event_end_date;
                $g_start_date = $value->match_start_date;
                $g_end_date = $value->match_end_date;
           }
           //dd($g_start_date);
           if($request->event_start_date >= $e_start_date && $request->event_start_date <= $e_end_date){
                return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Event start date and end date already use.'), 'goto' => route('admin.event.index')]);
           }

           if ($request->match_start_date >= $g_start_date && $request->match_end_date <= $g_end_date) {
               return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Game start date and end date already use.'), 'goto' => route('admin.event.index')]);
           }

        }
        $user_id = Auth::user()->id;
        if($request->match_condition == 2){
            if($request->clubone_id == $request->clubtwo_id){
                return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Do not play the game in the same match'), 'goto' => route('admin.event.index')]);
            }
        }

       
         $validatedData = $request->validate([
            'category_id'=>'required',
            'match_condition'=>'required',
            'subcategory_id'=>'',
            'studium_id'=>'required',
            'user_id'=>'',
            'clubone_id'=>'',
            'clubtwo_id'=>'',
            'single_club'=>'',
            'event_start_date'=>'required',
            'event_end_date'=>'required',
            'video_link'=>'',
            'detalis_link'=>'',
            'match_start_date'=>'required',
            'match_end_date'=>'required',
            'title'=>'required|unique:events|max:255',
            'title_slug'=>'required|unique:events',
            'cover_image'=>'',
            'cover_image_alt'=>'',
            'thumbnail_image'=>'',
            'thumbnail_image_alt'=>'',
            'description'=>'',
            'seo_title'=>'',
            'event_type'=>'',
            'event_country'=>'',
            'event_city'=>'',
            'total_event'=>'',
            'schema_tag'=>'',
            'meta_keyword'=>'',
            'meta_description'=>'',
            'status'=>'',
        ]);

        if ($request->status) {
            $validatedData['status'] = 1;
        }else{
              $validatedData['status'] = 0;
        }
        $validatedData['user_id'] =  $user_id;

        $a = strip_tags($validatedData['title_slug']);
            $a = str_limit($a, 50);
            $a = strtolower($a);
            $res = str_replace("", "", $a);
            $res = str_replace(".", "", $res);
            $res = str_replace("?", "", $res);
            $res = trim($res);
             $validatedData['title_slug'] = make_slug($res);


        $validatedData['score_one'] = 0;
        $validatedData['score_two'] = 0;

        $cover_image =$request->file('cover_image');
        $slug = str_slug($request->title);
        if (isset($cover_image)) {
         $curentdatetime = Carbon::now()->toDateString();
         $validatedData['cover_image'] = $slug.'_'.$curentdatetime.'_'.uniqid().'.'.$cover_image->getClientOriginalExtension();
          if(!file_exists('uploads')){
               mkdir('uploads',0777,true);
          }
          $cover_image->move('uploads',$validatedData['cover_image']);
       }else{
           $validatedData['cover_image'] ='photo.jpg';
       }

       $thumbnail_image =$request->file('thumbnail_image');
        $slug = str_slug($request->title);
        if (isset($thumbnail_image)) {
         $curentdatetime = Carbon::now()->toDateString();
         $validatedData['thumbnail_image'] = $slug.'_'.$curentdatetime.'_'.uniqid().'.'.$thumbnail_image->getClientOriginalExtension();
          if(!file_exists('uploads')){
               mkdir('uploads',0777,true);
          }
          $thumbnail_image->move('uploads',$validatedData['thumbnail_image']);
       }else{
           $validatedData['thumbnail_image'] ='photo.jpg';
       }


        $model = new Event();
        $model->create($validatedData);
      return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Event Added Successfuly'), 'goto' => route('admin.event.index')]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id){
        $model = Event::findOrFail($id);
        return view('admin.event.show',compact('model'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id){
        $category = Category::all();
        $studium = Studium::all();
        $club = Club::all();
        $model = Event::findOrFail($id);
        
        return view('admin.event.edit',compact('category','studium','club','model'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id){
        $model = Event::findOrFail($id);

        if ($request->event_start_date > $request->event_end_date) {
            return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('The event start date must be less than the event end date.')]);
        }

         if ($request->match_start_date > $request->match_end_date) {
            return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('The game start date must be less than the game end date.')]);
        }

        if($model->category_id != $request->category_id || $model->subcategory_id != $model->subcategory_id){
            // dd($request->category_id);
         $forcheck = Event::where('category_id', $request->category_id)->where('subcategory_id',$request->subcategory_id)->first();
                //dd($forcheck);
            if ($forcheck) {
                $e_start_date= $forcheck->event_start_date;
                $g_start_date= $forcheck->match_start_date;
                $e_end_date =  $forcheck->event_end_date;
                $g_end_date =  $forcheck->match_end_date;
            
            //dd($e_start_date);
            if($request->event_start_date >= $e_start_date && $request->event_end_date <= $e_end_date){
                    return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Event start date and end date already use.'), 'goto' => route('admin.event.index')]);
            }

            if ($request->match_start_date >= $g_start_date && $request->match_end_date <= $g_end_date) {
                return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Game start date and end date already use.'), 'goto' => route('admin.event.index')]);
            }

            }
        }
         $user_id = Auth::user()->id;
         if ($model->match_condition == 2) {
            
            if($request->clubone_id == $request->clubtwo_id){
                return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Do not play the game in the same match'), 'goto' => route('admin.event.index')]);
            }
        }
         $validatedData = $request->validate([

            'category_id'=>'required',
            'match_condition'=>'required',
            'subcategory_id'=>'',
            'studium_id'=>'required',
            'user_id'=>'',
            'clubone_id'=>'',
            'clubtwo_id'=>'',
            'single_club'=>'',
            'event_start_date'=>'required',
            'event_end_date'=>'required',
            'video_link'=>'',
            'detalis_link'=>'',
            'match_start_date'=>'required',
            'match_end_date'=>'required',
            'title'=> ['required', 'string', Rule::unique('events', 'title')->ignore($model->id)],
            'title_slug'=>['required', 'string', Rule::unique('events', 'title_slug')->ignore($model->id)],
            'cover_image'=>'',
            'cover_image_alt'=>'',
            'thumbnail_image'=>'',
            'thumbnail_image_alt'=>'',
            'description'=>'',
            'seo_title'=>'',
            'event_type'=>'',
            'event_country'=>'',
            'event_city'=>'',
            'total_event'=>'',
            'schema_tag'=>'',
            'meta_keyword'=>'',
            'meta_description'=>'',
            'status'=>'',
        ]);

        if ($request->status) {
            $validatedData['status'] = 1;
        }else{
              $validatedData['status'] = 0;
        }
        $validatedData['user_id'] =  $user_id;
       
       $a = strip_tags($validatedData['title_slug']);
            $a = str_limit($a, 50);
            $a = strtolower($a);
            $res = str_replace("", "", $a);
            $res = str_replace(".", "", $res);
            $res = str_replace("?", "", $res);
            $res = trim($res);
            $validatedData['title_slug'] = make_slug($res);

        $cover_image =$request->file('cover_image');
        $slug = str_slug($request->title);
        if (isset($cover_image)) {
            if ($request->cover_image) {
               if (file_exists('uploads/'.$model->cover_image)) {
                unlink('uploads/'.$model->cover_image);
                }
            }
         $curentdatetime = Carbon::now()->toDateString();
         $validatedData['cover_image'] = $slug.'_'.$curentdatetime.'_'.uniqid().'.'.$cover_image->getClientOriginalExtension();
          if(!file_exists('uploads')){
               mkdir('uploads',0777,true);
          }
          $cover_image->move('uploads',$validatedData['cover_image']);
       }else{
           $validatedData['cover_image'] = $model->cover_image;
       }


       $thumbnail_image =$request->file('thumbnail_image');
        $slug = str_slug($request->title);
        if (isset($thumbnail_image)) {
         $curentdatetime = Carbon::now()->toDateString();
         $validatedData['thumbnail_image'] = $slug.'_'.$curentdatetime.'_'.uniqid().'.'.$thumbnail_image->getClientOriginalExtension();
          if(!file_exists('uploads')){
               mkdir('uploads',0777,true);
          }
          $thumbnail_image->move('uploads',$validatedData['thumbnail_image']);
       }else{
           $validatedData['thumbnail_image'] =$model->thumbnail_image;
       }

    $model->update($validatedData);
      return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Event Update Successfuly'), 'goto' => route('admin.event.index')]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id){
        $model = Event::findOrFail($id);
        if($model->cover_image) {
            if (file_exists('uploads/'.$model->cover_image)) {
            unlink('uploads/'.$model->cover_image);
            }
        }
        $model->delete();
         return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Event Delete Successfuly'), 'goto' => route('admin.event.index')]);
    }

    public function scoreadd($id){
        $club = Event::findOrFail($id);
       return view('admin.event.score',compact('club'));

    }

    public function totalscore(Request $request){
        $id = $request->id;
        $row_id = $request->row_id;
        $score = Event::find( $row_id);
        if($score->clubone_id == $id){
            $data1 = Event::where('id',$row_id)->where('clubone_id',$id)->first();
            return $data1->score_one;
        }else if($score->clubtwo_id == $id){
        $data2 = Event::where('id',$row_id)->where('clubtwo_id',$id)->first();
            return $data2->score_two;
        }
    }
    
    public function scoreupdate($id, Request $request){
        $model = Event::findOrFail($id);
        if($model->clubone_id == $request->club_name){
            $model->score_one = $request->score;
            $model->save();
            return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Score Update Successfuly'), 'goto' => route('admin.event.index')]);
        }else if($model->clubtwo_id == $request->club_name){
            $model->score_two = $request->score;
            $model->save();
             return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Score Update Successfuly'), 'goto' => route('admin.event.index')]);
        }
    }
}

