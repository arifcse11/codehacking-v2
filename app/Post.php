<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
	use Sluggable;

	public function sluggable()
	{
		return [
			'slug' => [
				'source' => 'title',
				'save_to' => 'slug',
				'onUpdate' => true,
			]
		];
	}

    protected $fillable = [
    	'category_id',
	    'photo_id',
	    'title',
	    'body',
    ];

    public function user(){
    	return $this->belongsTo('App\User');
    }

    public function category(){
    	return $this->belongsTo('App\Category');
    }

    public function photo(){
    	return $this->belongsTo('App\Photo');
    }
}
