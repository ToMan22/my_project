<?php

namespace App;

use App\Model\Attachment;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContentCategory extends Model
{
    use HasFactory;


    protected $fillable = ['title', 'icon', 'short_description', 'long_description'];

    public function attachments()
    {
        return $this->belongsToMany(Attachment::class, 'attachment_category', 'content_category_id', 'attachment_id');
    }
}
