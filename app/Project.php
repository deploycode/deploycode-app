<?php

namespace deploycodeApp;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
  protected $table = 'projects';
  protected $fillable = ['name','description','url','job_id'];

  public function job(){
    return $this->belongsTo('deploycodeApp\Job');
  }
}
