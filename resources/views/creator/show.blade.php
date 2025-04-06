@extends('layouts.user-no-nav')
@section('page_title', __('Content Categories'))

{{-- Page specific CSS --}}
@section('styles')

@stop

{{-- Page specific JS --}}
@section('scripts')

@stop

@section('content')
<div class="container">
    <div class="row">
        <div class="col-12 px-4">
            <div class="">
                <div class="col-12 px-4">
                    <div class="">
                        <div class="feed-box mt-0 pt-4 posts-wrapper">
                            <h4>{{ $creatorCategory->title }}</h4>
                            <p>{{ $creatorCategory->short_description }}</p>
                        </div>

                        <div class="gallery-grid">
                            <div class="row">
                                @foreach ($creatorCategory->user as $creator)
                                    <!-- Image Item 1 -->
                                    <div class="col-6 mb-4">
                                        @include('elements.feed.suggestion-card',['profile' => $creator ,'isListMode' => false, 'isListManageable' => false])
                                    </div>
                                @endforeach
                            </div>
                        </div>

                        <div class="posts-wrapper mt-4">
                            <p>{!! $creatorCategory->long_description !!}</p>
                        </div>
                    </div>
                </div>

                <style>
                    /* Gallery Styling */
                    .gallery-tabs .nav-pills {
                        border-bottom: 1px solid #dee2e6;
                        padding-bottom: 10px;
                    }

                    .gallery-tabs .nav-link {
                        border-radius: 20px;
                        padding: 8px 20px;
                        font-weight: 500;
                        color: #495057;
                        background-color: transparent;
                        transition: all 0.3s ease;
                        margin-right: 10px;
                    }

                    .gallery-tabs .nav-link.active {
                        color: #fff;
                        background-color: #007bff;
                    }

                    .gallery-tabs .nav-link:hover:not(.active) {
                        background-color: rgba(0, 123, 255, 0.1);
                    }

                    /* Gallery items */
                    .gallery-item {
                        transition: all 0.3s ease;
                    }

                    .gallery-item:hover {
                        transform: translateY(-5px);
                    }

                    .gallery-link {
                        color: inherit;
                        text-decoration: none;
                    }

                    .gallery-image-wrapper {
                        position: relative;
                        overflow: hidden;
                        border-radius: 6px;
                    }

                    .gallery-image-wrapper img {
                        transition: transform 0.5s ease;
                        width: 100%;
                        height: 200px;
                        object-fit: cover;
                    }

                    .gallery-item:hover .gallery-image-wrapper img {
                        transform: scale(1.05);
                    }

                    .gallery-overlay,
                    .video-overlay {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        background: rgba(0, 0, 0, 0.3);
                        opacity: 0;
                        transition: opacity 0.3s ease;
                        border-radius: 6px;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                    }

                    .gallery-item:hover .gallery-overlay,
                    .gallery-item:hover .video-overlay {
                        opacity: 1;
                    }

                    .overlay-icon {
                        font-size: 2rem;
                        color: white;
                        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
                    }

                    .gallery-title {
                        font-size: 0.9rem;
                        margin-bottom: 5px;
                        color: #333;
                    }

                    .gallery-meta {
                        font-size: 0.75rem;
                        color: #6c757d;
                    }

                    /* Video specific styling */
                    .video-overlay {
                        opacity: 0.7;
                        background: linear-gradient(to bottom, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.7));
                    }

                    .video-duration {
                        position: absolute;
                        bottom: 10px;
                        right: 10px;
                        background: rgba(0, 0, 0, 0.7);
                        color: white;
                        font-size: 0.7rem;
                        padding: 2px 8px;
                        border-radius: 4px;
                    }

                    .video-item .fa-play-circle {
                        font-size: 3rem;
                    }
                </style>

                <script>
                    $(document).ready(function () {
                        // Tab functionality (using Bootstrap 4 built-in)
                        $('#galleryTabs a').on('click', function (e) {
                            e.preventDefault();
                            $(this).tab('show');
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</div>

@stop