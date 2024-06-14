<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Job;

class JobCategory extends Model
{
    protected $table = 'job_categories';
    use HasFactory;
    
    public function rJob(){
        return $this->hasMany(Job::class);
    }
}
