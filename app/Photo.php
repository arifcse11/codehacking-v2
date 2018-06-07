<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
	public $uploads = '/images/';

	public function getFileAttribute($photo){

		return $this->uploads . $photo;

	}
	protected $fillable = [
		'file',
	];
}
