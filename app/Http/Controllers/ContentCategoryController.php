<?php

namespace App\Http\Controllers;

use App\ContentCategory;
use Illuminate\Http\Request;

class ContentCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('content.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($contentCategoryId)
    {
        $contentCategory = ContentCategory::findOrFail($contentCategoryId);
    
        // Get all attachments for this category
        $attachments = $contentCategory->attachments;
        
        // Separate into images and videos
        $images = $attachments->filter(function ($attachment) {
            return $attachment->attachmentType == 'image';
        });
        
        $videos = $attachments->filter(function ($attachment) {
            return $attachment->attachmentType == 'video';
        });
        
        return view('content.show', compact('contentCategory', 'images', 'videos'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
