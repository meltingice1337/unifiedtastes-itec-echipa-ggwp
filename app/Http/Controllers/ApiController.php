<?php

namespace App\Http\Controllers;

use Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Comment;
use App\Event;

class ApiController extends Controller
{

	function addInterest(Request $request)
	{
		if(!$request->get('name'))
			return 'error';
		$interests = json_decode(Auth::user()->interests);
		if(!$interests)
			$interests = [];
		$name = trim ($request->get('name'));
		if(in_array($name, $interests))
			return 'error';
		$interests[] = $name;
		Auth::user()->interests = json_encode($interests);
		Auth::user()->save();
		return 'ok';
	}

	function postComment(Request $request, $id)
	{
		$event = Event::find($id);
		if(!$event)
			return redirect(route('index'));
		if(!$request->get('message'))
			return redirect()->back();
		$this->validate($request, [
			'g-recaptcha-response' => 'required|captcha'
			]);
		$comment = Comment::create([
			'text' => $request->get('message')
			]);
		Auth::user()->comments()->save($comment);
		$event->comments()->save($comment);
		return redirect()->back();
	}

}
