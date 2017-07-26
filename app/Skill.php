<?php

namespace deploycodeApp;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
  protected $table = 'skills';
  protected $fillable = ['name', 'value' , 'stack_id'];
  
  public static function stack()
  {
    return $this->belongsTo('deploycodeApp\Stack');
  }
}
