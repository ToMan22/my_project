<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CreatorCategory extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'icon', 'short_description', 'long_description'];

    public function user()
    {
        return $this->belongsToMany(User::class, 'creator_category', 'creator_category_id', 'user_id');
    }
}
