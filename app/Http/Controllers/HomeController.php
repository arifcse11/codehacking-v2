<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
	public $test_variable = '';


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$posts = Post::paginate(2);
    	$categories = Category::all();
        return view('front.home', compact('posts','categories'));
    }

	public function post($slug){

		$post = Post::where('slug', $slug)->first();
		$categories = Category::all();

		return view('post',compact('post','categories'));

	}
}
