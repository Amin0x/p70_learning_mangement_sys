@php
if (empty($authUser) and auth()->check()) {
$authUser = auth()->user();
}
@endphp

<div id="navbarVacuum"></div>


<div class="aa-header">
    <div class="aa-header__warpper">
        <div class="aa-header__small d-lg-none d-sm-block">
            <div class=" d-flex justify-content-between align-items-center">
                <div>
                    <a href="#" id="aaMenuTriger">
                        <img class="d-inline-block p-2" style="margin-left: 8px;" src="/assets/default/img/align-justify.svg" alt="">
                    </a>
                </div>
                <div class="h1" style="transform: translate(100px,0px);">
                    <a href="/">
                        @if(!empty($generalSettings['logo']))
                        <img src="{{ $generalSettings['logo'] }}" class="img-cover" alt="site logo" style="height: 72px;">
                        @endif
                    </a>
                </div>
                <div style="margin-right: 12px;">
                    <div class="d-inline-flex ml-2">

                        @include(getTemplate().'.includes.shopping-cart-dropdwon')

                        <div class="border-left mx-5 mx-lg-15"></div>

                        @include(getTemplate().'.includes.notification-dropdown')
                    </div>

                    @if(!empty($authUser))


                    <div class="dropdown">
                        <a href="#!" class="navbar-user d-flex align-items-center ml-50 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{ $authUser->getAvatar() }}" class="rounded-circle" alt="{{ $authUser->full_name }}">
                            <span class="font-16 user-name ml-10 text-dark-blue font-14">{{ $authUser->full_name }}</span>
                        </a>

                        <div class="dropdown-menu user-profile-dropdown" aria-labelledby="dropdownMenuButton">
                            <div class="d-md-none border-bottom mb-20 pb-10 text-right">
                                <i class="close-dropdown" data-feather="x" width="32" height="32" class="mr-10"></i>
                            </div>

                            <a class="dropdown-item" href="{{ $authUser->isAdmin() ? '/admin' : '/panel' }}">
                                <img src="/assets/default/img/icons/sidebar/dashboard.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('public.my_panel') }}</span>
                            </a>
                            @if($authUser->isTeacher() or $authUser->isOrganization())
                            <a class="dropdown-item" href="{{ $authUser->getProfileUrl() }}">
                                <img src="/assets/default/img/icons/profile.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('public.my_profile') }}</span>
                            </a>
                            @endif
                            <a class="dropdown-item" href="/logout">
                                <img src="/assets/default/img/icons/sidebar/logout.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('panel.log_out') }}</span>
                            </a>
                        </div>
                    </div>
                    @else
                    <div class="d-inline-flex align-items-center ml-md-20">
                        <a href="/login" class="aa-btn aa-btn-signin mr-2">{{ trans('auth.login') }}</a>
                        <a href="/register" class="aa-btn aa-btn-signup">{{ trans('auth.register') }}</a>
                    </div>
                    @endif

                </div>
            </div>
        </div>
        <div class="aa-header__xl d-none d-lg-block">
            <div class=" d-flex justify-content-between align-items-center">
                <div>
                    <a href="/">
                        @if(!empty($generalSettings['logo']))
                        <img src="{{ $generalSettings['logo'] }}" class="img-cover" alt="site logo" style="height: 72px;">
                        @endif
                    </a>
                </div>
                @if(!empty($categories) and count($categories))
                <div>
                    <button class="aa-header__xl__btn-category">Categories</button>


                </div>
                @endif
                <div class="aa-header__xl__serch flex-grow-1 px-5">
                    <form action="/search" method="get" class="d-block">
                        <input class="aa-serch-input" type="text" name="" id="" placeholder="Search">
                        <button type="submit" class="btn-transparent d-flex align-items-center justify-content-center aa-search-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search mr-10">
                                <circle cx="11" cy="11" r="8"></circle>
                                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                            </svg>
                        </button>
                    </form>
                </div>
                <div style="margin-right: 12px;">
                    <div class="d-inline-flex ml-2">

                        @include(getTemplate().'.includes.shopping-cart-dropdwon')

                        <div class="border-left mx-5 mx-lg-15"></div>

                        @include(getTemplate().'.includes.notification-dropdown')
                    </div>

                    @if(!empty($authUser))


                    <div class="dropdown">
                        <a href="#!" class="navbar-user d-flex align-items-center ml-50 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{ $authUser->getAvatar() }}" class="rounded-circle" alt="{{ $authUser->full_name }}">
                            <span class="font-16 user-name ml-10 text-dark-blue font-14">{{ $authUser->full_name }}</span>
                        </a>

                        <div class="dropdown-menu user-profile-dropdown" aria-labelledby="dropdownMenuButton">
                            <div class="d-md-none border-bottom mb-20 pb-10 text-right">
                                <i class="close-dropdown" data-feather="x" width="32" height="32" class="mr-10"></i>
                            </div>

                            <a class="dropdown-item" href="{{ $authUser->isAdmin() ? '/admin' : '/panel' }}">
                                <img src="/assets/default/img/icons/sidebar/dashboard.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('public.my_panel') }}</span>
                            </a>
                            @if($authUser->isTeacher() or $authUser->isOrganization())
                            <a class="dropdown-item" href="{{ $authUser->getProfileUrl() }}">
                                <img src="/assets/default/img/icons/profile.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('public.my_profile') }}</span>
                            </a>
                            @endif
                            <a class="dropdown-item" href="/logout">
                                <img src="/assets/default/img/icons/sidebar/logout.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('panel.log_out') }}</span>
                            </a>
                        </div>
                    </div>
                    @else
                    <div class="d-inline-flex align-items-center ml-md-20">
                        <a href="/login" class="aa-btn aa-btn-signin mr-2">{{ trans('auth.login') }}</a>
                        <a href="/register" class="aa-btn aa-btn-signup">{{ trans('auth.register') }}</a>
                    </div>
                    @endif

                </div>
            </div>
        </div>
        <div class="aa-cat-menu"></div>
    </div>
</div>

@push('scripts_bottom')
<script src="/assets/default/js/parts/navbar.min.js"></script>
<script>
    $(document).on('click', '#aaMenuTriger', function(e){
        $('#aaMainMenu').toggle();
    });
</script>
@endpush