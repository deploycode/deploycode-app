<?php

namespace deploycodeApp;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
  use Sluggable;
  public function sluggable()
  {
      return [
          'slug' => [
              'source' => 'name'
          ]
      ];
  }
  protected $table = 'posts';
  protected $fillable = ['name','slug','content','state','user_id','category_id'];

  public function user(){
    return $this->belongsTo('deploycodeApp\User');
  }
  public function category(){
    return $this->belongsTo('deploycodeApp\Category');
  }
  public function tags(){
    return $this->belongsToMany('deploycodeApp\Tag');
  }
}
