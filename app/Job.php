<?php

namespace deploycodeApp;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Job extends Model
{
  protected $dates = ['start','finish'];
  protected $table = 'jobs';
  protected $fillable = ['position', 'company','description','start','finish'];

  public function projects(){
    return $this->hasMany('deploycodeApp\Project');
  }
}
