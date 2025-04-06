@include('inc.alert')
@if (auth()->user()->isVerified())
    @if (auth()->user()->isMemberShipCreator())
        <div class="row my-5">
            <div class="col-md-12">
                <div class="text-center">
                    <div class="d-flex justify-content-center">
                        @include('elements.icon', [
                            'icon' => 'checkmark-circle-outline',
                            'variant' => 'large',
                            'classes' => 'text-primary already-creator-member-check',
                        ])
                    </div>
                    <h5 class="text-center font-weight-bold mb-3">You're now part of the exclusive $200
                        membership bundle. Watch your earnings grow!</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card border-0 shadow">
                    <div class="card-body">
                        <h4>Total Earned</h4>
                        <h2 class="text-right font-weight-bold text-primary">$0.00</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card border-0 shadow">
                    <div class="card-body">
                        <h4>Today Earned</h4>
                        <h2 class="text-right font-weight-bold text-primary">$0.00</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mt-5">
                <h4>Not Interested in Continuing?</h4>
                <p>You can opt out of the membership program anytime. We’ll ensure a smooth transition for you.</p>
                <p>By leaving the program, your profile will no longer be part of the $200 membership bundle. You can
                    still offer your individual subscriptions as usual.</p>
                <form action="{{ route('my.membership.update', ['membership' => auth()->user()->id]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="subscribe-button text-center">
                        <button type="submit" class="btn btn-lg btn-danger mt-3 mb-0">
                            Leave Membership Program
                        </button>
                    </div>
                </form>
            </div>
        </div>
    @else
        <div class="row">
            <div class="col-md-12">
                <div class="card bg-primary">
                    <div class="card-body text-white">
                        <h5 class="text-center text-white font-weight-bold mb-3">💡 Join the Exclusive
                            Membership Program!</h5>
                        <p class="">Boost your earnings by participating in our $200/month
                            membership. Let users subscribe to your content as part of an exclusive
                            bundle with 100+ creators.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mt-4">
                <div class="d-flex justify-content-between align-items-center px-3">
                    <ul class="list-unstyled text-primary d-flex flex-column" style="gap:8px;">
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
                </div>
                <form action="{{ route('my.membership.store') }}" method="POST">
                    @csrf
                    <h4 class="text-center font-weight-bold">Are you Sure? You want to Participate?</h4>
                    <div class="subscribe-button text-center">
                        <button type="submit" class="btn btn-lg btn-primary mt-3 mb-0">
                            {{ auth()->user()->wasAlreadyMemberShipCreator() ? 'Resume Membership' : 'Participate Now and Earn More!' }}

                        </button>
                    </div>
                </form>
            </div>
        </div>
    @endif
@else
    @if (auth()->user()->isActiveMemberShipUser())
        <div class="row my-5">
            <div class="col-md-12">
                <div class="text-center">
                    <div class="d-flex justify-content-center">
                        @include('elements.icon', [
                            'icon' => 'checkmark-circle-outline',
                            'variant' => 'large',
                            'classes' => 'text-primary already-creator-member-check',
                        ])
                    </div>
                    <h5 class="text-center font-weight-bold mb-3">100+ creators, unlimited content, one subscription.
                        Here’s what’s waiting for you!</h5>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card border-0 shadow">
                    <div class="card-body">
                        <h5 class="font-weight-bold mb-4">All Creators List</h5>
                        <div class="row">
                            @foreach ($allcreators as $creator)
                                <div class="col-md-6">
                                    <a href="{{ route('profile', $creator->creator->username) }}"
                                        class="user-details mb-4 d-flex pointer-cursor flex-row-no-rtl">
                                        <div class="ml-0 ml-md-2">
                                            @if (Auth::check())
                                                <img src="{{ $creator->creator->avatar }}"
                                                    class="rounded-circle user-avatar" width="50">
                                            @else
                                                <div class="avatar-placeholder">
                                                    @include('elements.icon', [
                                                        'icon' => 'person-circle',
                                                        'variant' => 'xlarge text-muted',
                                                    ])
                                                </div>
                                            @endif
                                        </div>
                                        @if (Auth::check())
                                            <div class="d-none d-lg-block overflow-hidden">
                                                <div
                                                    class="pl-2 d-flex justify-content-center flex-column overflow-hidden">
                                                    <div class="ml-2 d-flex flex-column overflow-hidden">
                                                        <span
                                                            class="text-bold text-truncate {{ Cookie::get('app_theme') == null ? (getSetting('site.default_user_theme') == 'dark' ? '' : 'text-dark-r') : (Cookie::get('app_theme') == 'dark' ? '' : 'text-dark-r') }}">{{ $creator->creator->name }}</span>
                                                        <span
                                                            class="text-muted"><span>@</span>{{ $creator->creator->username }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @else
        <div class="row">
            <div class="col-md-12">
                <div class="card bg-primary">
                    <div class="card-body text-white">
                        <h5 class="text-center text-white font-weight-bold mb-3">🌟 Unlock Unlimited
                            Access
                            to 100+
                            Creators for Just $200! 🌟</h5>
                        <p class="">Why subscribe one by one? Enjoy exclusive content from 100+
                            amazing creators all
                            in one subscription for just $200/month.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mt-4">
                <div class="d-flex justify-content-between align-items-center">
                    <ul class="list-unstyled text-primary d-flex flex-column" style="gap:8px;">
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
                </div>
                <form action="{{ route('my.membership.store') }}" method="POST">
                    @csrf
                    <h4 class="text-center font-weight-bold">Are you Sure? You want to Participate?</h4>
                    <div class="subscribe-button text-center">
                        <button type="submit" class="btn btn-lg btn-primary mt-3 mb-0">
                            Subscribe Now!
                        </button>
                    </div>
                </form>
            </div>
        </div>
    @endif
@endif
