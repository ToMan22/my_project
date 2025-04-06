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
        <div class="col-12">
            <div class="">
                <div class="feed-box mt-0 pt-4 posts-wrapper">
                    <h4>{{ $contentCategory->title }}</h4>
                    <p>{{ $contentCategory->short_description }}</p>
                </div>

                <!-- Gallery Tab Navigation -->
                <div class="gallery-tabs mb-4">
                    <ul class="nav nav-pills" id="galleryTabs" role="tablist">
                        <li class="nav-item flex-grow-1">
                            <a class="nav-link btn-block text-center rounded active" id="images-tab" data-toggle="tab"
                                href="#images" role="tab" aria-controls="images" aria-selected="true">
                                <i class="fa fa-image mr-2"></i>Images ({{ $images->count() }})
                            </a>
                        </li>
                        <li class="nav-item flex-grow-1">
                            <a class="nav-link btn-block text-center rounded" id="videos-tab" data-toggle="tab"
                                href="#videos" role="tab" aria-controls="videos" aria-selected="false">
                                <i class="fa fa-video mr-2"></i>Videos ({{ $videos->count() }})
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Gallery Tab Content -->
                <div class="tab-content" id="galleryTabContent">
                    <!-- Images Tab -->
                    <div class="tab-pane fade show active" id="images" role="tabpanel" aria-labelledby="images-tab">
                        <div class="gallery-grid">
                            <div class="row">
                                @forelse($images as $image)
                                    <div class="col-6 col-md-4 col-lg-3 mb-4">
                                        <div class="gallery-item">
                                            <a href="{{ route('posts.get', ['post_id' => $image->post_id, 'username' => $image->user->username]) }}"
                                                class="gallery-link">
                                                <div class="gallery-image-wrapper">
                                                    @if ($image->post->price > 0)
                                                        <span
                                                            class="bg-primary position-absolute px-2 py-1 text-white">PPV</span>
                                                    @endif
                                                    <img src="{{ $image->post->price > 0 ? $image->thumbnail : $image->path }}"
                                                        class="img-fluid rounded" alt="Gallery Image">
                                                    <div class="gallery-overlay">
                                                        <i class="fa fa-search-plus overlay-icon"></i>
                                                    </div>
                                                </div>
                                                <div class="gallery-caption mt-2">
                                                    <h6 class="gallery-title text-truncate">{{ $image->post->text }}</h6>
                                                    <div class="gallery-meta d-flex justify-content-between">
                                                        <span
                                                            class="gallery-date">{{ $image->created_at->diffForHumans() }}</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                @empty
                                    <div class="col-12">
                                        <div class="alert alert-info">
                                            No images found in this category.
                                        </div>
                                    </div>
                                @endforelse
                            </div>
                        </div>
                    </div>

                    <!-- Videos Tab -->
                    <div class="tab-pane fade" id="videos" role="tabpanel" aria-labelledby="videos-tab">
                        <div class="gallery-grid">
                            <div class="row">
                                @forelse($videos as $video)
                                    <div class="col-6 col-md-4 col-lg-4 mb-4">
                                        <div class="gallery-item video-item">
                                            <a href="{{ route('posts.get', ['post_id' => $video->post_id, 'username' => $video->user->username]) }}" class="gallery-link">
                                                <div class="gallery-image-wrapper">
                                                    @if ($video->post->price > 0)
                                                        <span
                                                            class="bg-primary position-absolute px-2 py-1 text-white">PPV</span>
                                                    @endif
                                                    <img src="{{ $video->thumbnail ?? asset('path/to/default/video-thumbnail.jpg') }}"
                                                        class="img-fluid rounded" alt="Video Thumbnail">
                                                    <div class="video-overlay">
                                                        <i class="fa fa-play-circle overlay-icon"></i>
                                                        <span
                                                            class="video-duration">{{ 'MP4' }}</span>
                                                    </div>
                                                </div>
                                                <div class="gallery-caption mt-2">
                                                    <h6 class="gallery-title text-truncate">{{ $video->post->text }}</h6>
                                                    <div class="gallery-meta d-flex justify-content-between">
                                                        <span
                                                            class="gallery-date">{{ $video->created_at->diffForHumans() }}</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                @empty
                                    <div class="col-12">
                                        <div class="alert alert-info">
                                            No videos found in this category.
                                        </div>
                                    </div>
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>

                <div class="posts-wrapper mt-4">
                    <hr>
                    <p>{!! $contentCategory->long_description !!}</p>
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
                background-color: --bs-primary;
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

@stop