<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    protected $primaryKey = 'staffcode';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $table = 'staff';
}

