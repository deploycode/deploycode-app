<?php

namespace deploycodeApp;

use Illuminate\Database\Eloquent\Model;

class Stack extends Model
{
  protected $table = 'stacks';
  protected $fillable = ['name'];
  
  public static function skills()
  {
    return $this->hasMany('deploycodeApp\Skill');
  }
}
