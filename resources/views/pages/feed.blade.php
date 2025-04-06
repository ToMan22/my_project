@extends('layouts.user-no-nav')
@section('page_title', __('Your feed'))

{{-- Page specific CSS --}}
@section('styles')
    {!! Minify::stylesheet([
        '/libs/swiper/swiper-bundle.min.css',
        '/libs/photoswipe/dist/photoswipe.css',
        '/css/pages/checkout.css',
        '/libs/photoswipe/dist/default-skin/default-skin.css',
        '/css/pages/feed.css',
        '/css/posts/post.css',
        '/css/pages/search.css',
    ])->withFullUrl() !!}
    @if (getSetting('feed.post_box_max_height'))
        @include('elements.feed.fixed-height-feed-posts', [
            'height' => getSetting('feed.post_box_max_height'),
        ])
    @endif
@stop

{{-- Page specific JS --}}
@section('scripts')
    {!! Minify::javascript([
        '/js/PostsPaginator.js',
        '/js/CommentsPaginator.js',
        '/js/Post.js',
        '/js/SuggestionsSlider.js',
        '/js/pages/lists.js',
        '/js/pages/feed.js',
        '/js/pages/checkout.js',
        '/libs/swiper/swiper-bundle.min.js',
        '/js/plugins/media/photoswipe.js',
        '/libs/photoswipe/dist/photoswipe-ui-default.min.js',
        '/js/plugins/media/mediaswipe.js',
        '/js/plugins/media/mediaswipe-loader.js',
    ])->withFullUrl() !!}
@stop

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-lg-8 col-md-7 second p-0 ">
                <div class="d-flex d-md-none px-3 py-3 feed-mobile-search neutral-bg fixed-top-m">
                    @include('elements.search-box')
                </div>

                @if (!getSetting('feed.hide_suggestions_slider'))
                    <div class="d-block d-md-none d-lg-none m-pt-70 feed-suggestions-wrapper">
                        @include('elements.feed.suggestions-box', [
                            'profiles' => $suggestions,
                            'isMobile' => true,
                        ])
                    </div>
                @endif

                {{-- @include('elements.user-stories-box') --}}

                <div class="">
                    @include('elements.message-alert', ['classes' => 'pt-4 pb-4 px-2'])
                    @include('elements.feed.posts-load-more')
                    <div class="feed-box mt-0 pt-4 posts-wrapper">
                        @if (auth()->user()->isVerified())
                            @if (!auth()->user()->isMemberShipCreator())
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card bg-primary">
                                            <div class="card-body text-white">
                                                <h5 class="text-center text-white font-weight-bold mb-3">💡 Join the
                                                    Exclusive
                                                    Membership Program!</h5>
                                                <p class="">Boost your earnings by participating in our $200/month
                                                    membership. Let users subscribe to your content as part of an exclusive
                                                    bundle with 100+ creators.</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <ul class="list-unstyled text-white d-flex flex-column"
                                                        style="gap:8px;">
                                                        <li>
                                                            <span class="d-flex  align-items-center" style="gap: 4px;">
                                                                @include('elements.icon', [
                                                                    'icon' => 'checkmark-circle-outline',
                                                                    'variant' => 'medium',
                                                                ])
                                                                <h6 class="mb-0">Earn steady income</h6>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span class="d-flex  align-items-center" style="gap: 4px;">
                                                                @include('elements.icon', [
                                                                    'icon' => 'checkmark-circle-outline',
                                                                    'variant' => 'medium',
                                                                ])
                                                                <h6 class="mb-0">Reach a wider audience</h6>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span class="d-flex  align-items-center" style="gap: 4px;">
                                                                @include('elements.icon', [
                                                                    'icon' => 'checkmark-circle-outline',
                                                                    'variant' => 'medium',
                                                                ])
                                                                <h6 class="mb-0">Grow your fanbase</h6>
                                                            </span>
                                                        </li>
                                                    </ul>
                                                    <div class="subscribe-button">
                                                        <a class="btn btn-lg btn-light btn-block mt-3 mb-0"
                                                            onclick="window.location.href='{{route('my.settings',['type'=>'membership'])}}'">
                                                            <span class="text-primary">Participate Now and Earn More!</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @else
                            @if (!auth()->user()->isActiveMemberShipUser())
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card bg-primary">
                                            <div class="card-body text-white">
                                                <h5 class="text-center text-white font-weight-bold mb-3">🌟 Unlock Unlimited
                                                    Access
                                                    to 100+
                                                    Creators for Just $200! 🌟</h5>
                                                <p class="">Why subscribe one by one? Enjoy exclusive content from
                                                    100+
                                                    amazing creators all
                                                    in one subscription for just $200/month.</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <ul class="list-unstyled text-white d-flex flex-column"
                                                        style="gap:8px;">
                                                        <li>
                                                            <span class="d-flex  align-items-center" style="gap: 4px;">
                                                                @include('elements.icon', [
                                                                    'icon' => 'checkmark-circle-outline',
                                                                    'variant' => 'medium',
                                                                ])
                                                                <h6 class="mb-0">Save Big</h6>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span class="d-flex  align-items-center" style="gap: 4px;">
                                                                @include('elements.icon', [
                                                                    'icon' => 'checkmark-circle-outline',
                                                                    'variant' => 'medium',
                                                                ])
                                                                <h6 class="mb-0">Explore More</h6>
                                                            </span>
                                                        </li>
                                                        <li>
                                                            <span class="d-flex  align-items-center" style="gap: 4px;">
                                                                @include('elements.icon', [
                                                                    'icon' => 'checkmark-circle-outline',
                                                                    'variant' => 'medium',
                                                                ])
                                                                <h6 class="mb-0">Unlimited Entertainment</h6>
                                                            </span>
                                                        </li>
                                                    </ul>
                                                    <div class="subscribe-button">
                                                        <a class="btn btn-lg btn-light btn-block mt-3 mb-0"
                                                            onclick="window.location.href='{{route('my.settings',['type'=>'membership'])}}'">
                                                            <span class="text-primary">Subscribe Now!</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endif
                        @include('elements.feed.posts-wrapper', ['posts' => $posts])
                    </div>
                    @include('elements.feed.posts-loading-spinner')
                </div>
            </div>
            <div
                class="col-12 col-sm-12 col-md-5 col-lg-4 first border-left order-0 pt-4 pb-5 min-vh-100 suggestions-wrapper d-none d-md-block">

                <div class="feed-widgets">
                    <div class="mb-3">
                        @include('elements.search-box')
                    </div>

                    @if (!getSetting('feed.hide_suggestions_slider'))
                        @include('elements.feed.suggestions-box', [
                            'profiles' => $suggestions,
                            'isMobile' => false,
                        ])
                    @endif
                    @if (getSetting('custom-code-ads.sidebar_ad_spot'))
                        <div class="mt-3">
                            {!! getSetting('custom-code-ads.sidebar_ad_spot') !!}
                        </div>
                    @endif

                    @include('template.footer-feed')

                </div>

            </div>
        </div>
        @include('elements.checkout.checkout-box')
    </div>

    <div class="d-none">
        <ion-icon name="heart"></ion-icon>
        <ion-icon name="heart-outline"></ion-icon>
    </div>

    @include('elements.standard-dialog', [
        'dialogName' => 'comment-delete-dialog',
        'title' => __('Delete comment'),
        'content' => __('Are you sure you want to delete this comment?'),
        'actionLabel' => __('Delete'),
        'actionFunction' => 'Post.deleteComment();',
    ])

@stop
