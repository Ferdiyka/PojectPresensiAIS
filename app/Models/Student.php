<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $primaryKey = 'SID';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $table = 'students';

    public function parents()
    {
        return $this->belongsToMany(Parent::class, 'student_parent', 'SID', 'parentcode');
    }
}

