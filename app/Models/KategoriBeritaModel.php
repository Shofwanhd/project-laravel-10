<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriBeritaModel extends Model
{
    use HasFactory;
    public $table = "kategori";
    protected $guarded = [];
}
