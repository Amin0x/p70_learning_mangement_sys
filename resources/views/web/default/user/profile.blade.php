@extends(getTemplate().'.layouts.app')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/persian-datepicker/persian-datepicker.min.css"/>
    <link rel="stylesheet" href="/assets/default/css/css-stars.css">
@endpush


@section('content')
    


<div style="max-width: 1000px; margin: 50px auto 0;">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <div class="am-user-profile-info">
                    <div class="am-photo-w">
                        <div class="am-photo text-center">
                            <img class="rounded-circle" src="{{ $user->getAvatar() }}" alt="Amin Omer" style="width: 150px; height: 150px">
                            @if($user->offline)
                            <span class="user-circle-badge unavailable d-flex align-items-center justify-content-center">
                                <i data-feather="slash" width="20" height="20" class="text-white"></i>
                            </span>
                            @elseif($user->verified)
                            <span class="user-circle-badge has-verified d-flex align-items-center justify-content-center">
                                <i data-feather="check" width="20" height="20" class="text-white"></i>
                            </span>
                            @endif
                        </div>
                        <div class="am-name text-center h4 mt-2">
                        {{ $user["full_name"] }}
                        </div>
                        <div class="text-center  mt-2">
                            <div class="rounded d-inline-block px-4" style="font-size: 13px;font-weight: 700; line-height: 18px; background-color: #002333; color: #00ff84;">
                                teacher
                            </div>
                        </div>
                    </div>
                    <div class="am-info">
                        <div class="follow-stats mt-3">
                            <div class="follow-stats-wrapper-user-stats d-flex justify-content-around">
                                <a href="javascript:;" class="text-decoration-none text-dark mr-2 text-center">
                                    <div class="follow-stat followers">
                                        <h2 class="number  text-center"><span>{{ $userFollowers->count() }}</span></h2> 
                                        &nbsp;{{ trans('panel.followers') }}
                                    </div>
                                </a>

                                <a href="javascript:;" class="text-decoration-none text-dark ml-2 text-cente">
                                    <div class="follow-stat following">
                                        <h2 class="number  text-center"><span>{{ $userFollowing->count() }}</span></h2>
                                        &nbsp;{{ trans('panel.following') }}
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="am-btn-follow-w text-center mt-3">
                            <a href="javascript:;" id="followToggle" data-user-id="{{ $user['id'] }}" class="btn btn-follow" title="Follow" rel="nofollow"><i data-feather="plus"></i> Follow</a>
                            <button type="button" id="followToggle" data-user-id="{{ $user['id'] }}" class="btn btn-{{ (!empty($authUserIsFollower) and $authUserIsFollower) ? 'danger' : 'primary' }} btn-sm">
                                @if(!empty($authUserIsFollower) and $authUserIsFollower)
                                    {{ trans('panel.unfollow') }}
                                @else
                                    {{ trans('panel.follow') }}
                                @endif
                            </button>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="user-information-social-links text-center">
                    <a href="https://www.urlwebsite.com/" class="social-media-link icon-globe secondary no-underline"
                        target="_blank" rel="noreferrer">urlwebsite.com/</a>
                </div>

            </div>
            <div class="col-lg-9">
                <!-- <h4>About</h4> -->
                <div>@include(getTemplate().'.user.profile_tabs.about')</div>
                <div class="section">
                    @include(getTemplate().'.user.profile_tabs.webinars')
                </div>
                <div>@include(getTemplate().'.user.profile_tabs.badges')</div>
                <div>@include(getTemplate().'.user.profile_tabs.appointments')</div>
                <div class="section">
                    <div class="section-header">
                        <h2>NEW CLASS! Take Control of your Personal Finances</h2>
                    </div>
                    <div class="section-content row discussions use-flexbox populated">
                        <div class="col-2 discussion-column">
                            <div class="discussion-grid-item-wrapper">
                                <a href="#" class="link-main no-bold">
                                    <div class="discussion-grid-item">
                                        <div class="discussion-header-wrapper">
                                            <div class="discussion-header">
                                                <div class="discussion-title font-size-6">
                                                    <strong>NEW CLASS! Take Control of your Personal Finances</strong>
                                                </div>
                                                <div class="discussion-data font-size-6">about 1 year ago<span class="middot">·</span><span class="ss-icon-empty-comment">4</span></div>
                                            </div>
                                        </div>
                                        <div class="horizontal-rule"></div>
                                        <div class="discussion-content-wrapper">
                                            <div class="discussion-content">Hi Everyone!I’ve taught a bunch of classes,</div>
                                        </div>
                                        <div class="fade-text"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                      
                    </div>
                </div>

            </div>
        </div>
    </div>

    

    

@endsection

@push('scripts_bottom')
    <script>
        var unFollowLang = '{{ trans('panel.unfollow') }}';
        var followLang = '{{ trans('panel.follow') }}';
        var reservedLang = '{{ trans('meeting.reserved') }}';
        var availableDays = {{ json_encode($times) }};
        var messageSuccessSentLang = '{{ trans('site.message_success_sent') }}';
    </script>

    <script src="/assets/default/vendors/persian-datepicker/persian-date.js"></script>
    <script src="/assets/default/vendors/persian-datepicker/persian-datepicker.js"></script>

    <script src="/assets/default/js/parts/profile.min.js"></script>
@endpush
