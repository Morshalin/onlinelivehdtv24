<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Category;
use App\Subcategory;
use App\Slider;
use App\Gallery;
use App\About;
use App\Subsicber;
use App\Contact;
use App\Newslatest;
use Carbon\Carbon;
use App\Event;
use App\HomePage;
use App\Upcomingmatch;

class FrontendController extends Controller{

    public function index(){
    /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/
        $left_slide = Slider::where('position',1)->get();
        $right_slide = Slider::where('position',2)->get();
        $gallery_image = Gallery::orderBy('id','desc')->take(6)->get();
        $about_us = About::first();

        $seo = HomePage::first();

        $news_latest = Newslatest::where('status',0)->orderBy('id','desc')->take(2)->get();
        $banner_news = Newslatest::where('status',1)->orderBy('id','desc')->first();
        $event = Event::where('status',1)->orderBy('event_start_date','asc')->take(15)->get();
        
        $mydate = Carbon::now();
        $today = explode(" ",$mydate);
        $todayDate = $today[0];
        
        $running = true;
        $upcoming_match = Event::where('status',1)->where('event_start_date','<=', $todayDate)->where('event_end_date','>=', $todayDate)->first();
        
        if(!$upcoming_match){
            $upcoming_match = Event::where('status',1)->where('event_start_date','>=', $todayDate)->orderBy('event_start_date','asc')->first();
            $running = false;
        }
        
        //dd($upcoming_match);
        $alternrt_match = Event::where('status',1)->orderBy('id','desc')->take(1)->first();



        return view('game.index',compact('all_category','left_slide','right_slide','gallery_image','about_us','news_latest','banner_news','event','upcoming_match','alternrt_match', 'running','seo'));
    }

    public function accrodingCategory($slug){
       
    /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/
        $banner_image = Category::where('cat_slug_name',$slug)->first();
        
        $mydate = Carbon::now();
        $today = explode(" ",$mydate);
        $todayDate = $today[0];
        
        $news_latest = Newslatest::where('status',0)->where('category_id',$banner_image->id)->orderBy('id','desc')->take(2)->get();
        $random_latest = Newslatest::where('status',1)->where('category_id',$banner_image->id)->get();
        $banner_news = Newslatest::where('status',1)->where('category_id',$banner_image->id)->orderBy('id','desc')->first();
        $event = Event::where('status',1)->where('category_id',$banner_image->id)->where('event_start_date', '>=', $todayDate)->orderBy('event_start_date','asc')->take(15)->get();
        
        $running = true;
        $upcoming_match = Event::where('status',1)->where('event_start_date','<=', $todayDate)->where('event_end_date','>=', $todayDate)->where('category_id', $banner_image->id)->first();
         
        if(!$upcoming_match){
            $upcoming_match = Event::where('status',1)->where('event_start_date','>=', $todayDate)->where('category_id', $banner_image->id)->orderBy('event_start_date','asc')->first();
            $running = false;
        }
  
        $alter_match = Event::where('status',1)->where('category_id',$banner_image->id)->orderBy('id','desc')->take(1)->first();
        
         
        return view('game.category',compact('all_category','banner_image','news_latest','banner_news','event','upcoming_match','random_latest','alter_match'));
    }

    public function accrodingSubategory($slug){
    /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/
        $banner_image = Subcategory::where('subcat_slug_name',$slug)->first();
        
        $news_latest = Newslatest::where('status',0)->where('subcategory_id',$banner_image->id)->orderBy('id','desc')->take(2)->get();
        
        $banner_news = Newslatest::where('status',1)->where('subcategory_id',$banner_image->id)->orderBy('id','desc')->first();
        
        $event = Event::where('status',1)->where('subcategory_id',$banner_image->id)->where('event_start_date', '>=',' $todayDate')->orderBy('event_start_date','asc')->take(15)->get();
        
        $mydate = Carbon::now();
        $random_latest = Newslatest::where('status',1)->where('subcategory_id',$banner_image->id)->get();
        $today = explode(" ",$mydate);
        $todayDate = $today[0];
        
 

    //  $upcoming_match = Event::where('status',1)->where('event_start_date','>=', $todayDate)->where('subcategory_id', $banner_image->id)->orderBy('event_start_date','asc')->first();
    //  if($upcoming_match and $upcoming_match->event_end_data > $todayDate){
    //      $upcoming_match = Null;
    //  }
    
    $running = true;
        $upcoming_match = Event::where('status',1)->where('event_start_date','<=', $todayDate)->where('event_end_date','>=', $todayDate)->where('subcategory_id', $banner_image->id)->first();
        
        if(!$upcoming_match){
            $upcoming_match = Event::where('status',1)->where('event_start_date','>=', $todayDate)->where('subcategory_id', $banner_image->id)->orderBy('event_start_date','asc')->first();
            $running = false;
        }
        

        $alter_match = Event::where('status',1)->where('subcategory_id',$banner_image->id)->orderBy('id','desc')->first();
        
        return view('game.subcategory',compact('all_category','banner_image','news_latest','banner_news','event','upcoming_match','random_latest','alter_match'));
    }

    public function subscribe(Request $request){
        
        $data = $request->validate([
            'email'=>'required|max:255',
        ]);
        $check_email = "";
        $validation = Subsicber::where('email',$request->email)->get();
        foreach ($validation as  $value) {
             $check_email .= $value->email;
        }
        //dd($check_email);
        if($check_email == $request->email){
             return response()->json(['success' => false, 'status' => 'danger', 'message' => _lang('Email Address already Exits.')]);
        }else{
            $models = new Subsicber();
            $models->create($data);
            return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('subscribe Successfuly'), 'goto' => url('/')]);
        }
        
    }

    public function newsdetails($slug){
        /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/
        $news_detalis = Newslatest::where('title_slug',$slug)->first();
        return view('game.news_detalis', compact('all_category','news_detalis'));
    }

    public function dmca(){
         /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/

        return view('game.dmca',compact('all_category'));
    }

    public function contact(){
    /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/
        return view('game.contact',compact('all_category'));
    }

    public function contactus(Request $request){
        $data = $request->validate([
            'name'=>'required',
            'email'=>'required',
            'number'=>'required',
            'subject'=>'required',
            'message'=>'required|max:400',
        ]);
        $data['status']=0;
        $model = new Contact();
        $model->create($data);
        return response()->json(['success' => true, 'status' => 'success', 'message' => _lang('Message Send Successfuly'), 'goto' => route('contact')]);
    }

    public function eventdetalis($slug){
        /* =================Start header section  ====================*/
        $all_category = Category::with('sub_category')->get();
    /* =====================End header section  ===================*/
        $eventdetalis = Event::where('title_slug',$slug)->first();
        return view('game.eventdetalis', compact('all_category','eventdetalis'));
    }

    public function upcomingevents(){
        $all_category = Category::with('sub_category')->get();

        $mydate = Carbon::now();
        $today = explode(" ",$mydate);
        $todayDate = $today[0];

        $upcoming_match = Event::where('status',1)->where('event_end_date', '>', $todayDate)->orderBy('event_start_date','asc')->paginate(12);

         return view('game.upcomingevent', compact('all_category','upcoming_match'));
    }

    public function currentevent(){
        $all_category = Category::with('sub_category')->get();
        $mydate = Carbon::now();
        $today = explode(" ",$mydate);
        $todayDate = $today[0];
        $currentevent = Event::where('status',1)->where('event_start_date', '<=', $todayDate)->where('event_end_date', '>=', $todayDate)->orderBy('event_start_date','asc')->paginate(12);

         return view('game.currentevent', compact('all_category','currentevent'));
    }

    public function pastevent(){
        $all_category = Category::with('sub_category')->get();
        $mydate = Carbon::now();
        $today = explode(" ",$mydate);
        $todayDate = $today[0];
        $pastevent = Event::where('status',1)->where('match_end_date', '<', $todayDate)->orderBy('event_start_date','asc')->paginate(12);

         return view('game.pastevent', compact('all_category','pastevent'));
    }

    public function live($id){
        $live_stream = Event::findOrFail($id);
        return view('game.live_stream',compact('live_stream'));
    }
}
