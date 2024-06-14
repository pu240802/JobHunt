<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CandidateSearchHistory extends Model
{
    use HasFactory;

    protected $fillable = ['candidate_id', 'search_title'];

    public function rCandidate(){
        return $this->belongsTo(Candidate::class,'candidate_id');
    }

   
}
