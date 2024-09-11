<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParentModel extends Model
{
    use HasFactory;

    protected $table = 'parents';
    protected $primaryKey = 'parentcode';
    public $incrementing = false;
    protected $keyType = 'string';

    public function students()
    {
        return $this->belongsToMany(Student::class, 'student_parent', 'parentcode', 'SID');
    }
}
