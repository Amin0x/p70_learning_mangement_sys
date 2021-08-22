@extends(getTemplate().'.layouts.app')

@push('styles_top')
<link rel="stylesheet" href="/assets/default/vendors/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
@endpush

@section('content')
<section class="site-top-banner search-top-banner opacity-04 position-relative">
    <img src="{{ getPageBackgroundSettings('categories') }}" class="img-cover" alt="" />

    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-12 col-md-9 col-lg-7">
                <div class="top-search-categories-form">
                    <h1 class="text-white font-30 mb-15">{{ $pageTitle }}</h1>
                    <span class="course-count-badge py-5 px-10 text-white rounded">{{ $coursesCount }} {{ trans('product.courses') }}</span>

                    <div class="search-input bg-white p-10 flex-grow-1">
                        <form action="/search" method="post">
                            <div class="form-group d-flex align-items-center m-0">
                                <input type="text" class="form-control border-0" placeholder="{{ trans('home.slider_search_placeholder') }}" />
                                <button type="submit" class="btn btn-primary rounded-pill">{{ trans('home.find') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container mt-30">

    <section class="mt-lg-50 pt-lg-20 mt-md-40 pt-md-40">
        <form action="/classes" method="get" id="filtersForm">

            @include('web.default.pages.includes.top_filters')

            <div class="row mt-20">
                <div class="col-12 col-lg-8">

                    @if(empty(request()->get('card')) or request()->get('card') == 'grid')
                    <div class="row">
                        @foreach($webinars as $webinar)
                        <div class="col-12 col-lg-6 mt-20">
                            @include('web.default.includes.webinar.grid-card',['webinar' => $webinar])
                        </div>
                        @endforeach
                    </div>

                    <div id="data-wrapper">
                        @elseif(!empty(request()->get('card')) and request()->get('card') == 'list')
    
                        @foreach($webinars as $webinar)
                        @include('web.default.includes.webinar.list-card',['webinar' => $webinar])
                        @endforeach
    
    
                        @endif
                        <!-- Results -->
                    </div>

                    <div class="auto-load text-center">
                        <svg version="1.1" id="L9" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                            x="0px" y="0px" height="60" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
                            <path fill="#000"
                                d="M73,50c0-12.7-10.3-23-23-23S27,37.3,27,50 M30.9,50c0-10.5,8.5-19.1,19.1-19.1S69.1,39.5,69.1,50">
                                <animateTransform attributeName="transform" attributeType="XML" type="rotate" dur="1s"
                                    from="0 50 50" to="360 50 50" repeatCount="indefinite" />
                            </path>
                        </svg>
                    </div>

                </div>


                <div class="col-12 col-lg-4">
                    <div class="mt-20 p-20 rounded-sm shadow-lg border border-gray300 filters-container">

                        <div class="">
                            <h3 class="category-filter-title font-20 font-weight-bold text-dark-blue">{{ trans('public.type') }}</h3>

                            <div class="pt-10">
                                @foreach(['webinar','course','text_lesson'] as $typeOption)
                                <div class="d-flex align-items-center justify-content-between mt-20">
                                    <label class="cursor-pointer" for="filterLanguage{{ $typeOption }}">{{ trans('webinars.'.$typeOption) }}</label>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="type[]" id="filterLanguage{{ $typeOption }}" value="{{ $typeOption }}" @if(in_array($typeOption, request()->get('type', []))) checked="checked" @endif class="custom-control-input">
                                        <label class="custom-control-label" for="filterLanguage{{ $typeOption }}"></label>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>

                        <div class="mt-25 pt-25 border-top border-gray300">
                            <h3 class="category-filter-title font-20 font-weight-bold text-dark-blue">{{ trans('site.more_options') }}</h3>

                            <div class="pt-10">
                                @foreach(['subscribe','certificate_included','with_quiz','featured'] as $moreOption)
                                <div class="d-flex align-items-center justify-content-between mt-20">
                                    <label class="cursor-pointer" for="filterLanguage{{ $moreOption }}">{{ trans('webinars.show_only_'.$moreOption) }}</label>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" name="moreOptions[]" id="filterLanguage{{ $moreOption }}" value="{{ $moreOption }}" @if(in_array($moreOption, request()->get('moreOptions', []))) checked="checked" @endif class="custom-control-input">
                                        <label class="custom-control-label" for="filterLanguage{{ $moreOption }}"></label>
                                    </div>
                                </div>
                                @endforeach

                                <div id="BottomThing">

                                </div>

                            </div>
                        </div>


                        <button type="submit" class="btn btn-sm btn-primary btn-block mt-30">{{ trans('site.filter_items') }}</button>
                    </div>
                </div>
            </div>

        </form>
        <div class="mt-50 pt-30">
          
        </div>
    </section>
</div>

@endsection

@push('scripts_bottom')
<script src="/assets/default/vendors/select2/select2.min.js"></script>
<script src="/assets/default/vendors/swiper/swiper-bundle.min.js"></script>

<script>
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 1,
        spaceBetween: 16,
        loop: false,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        breakpoints: {
            991: {
                slidesPerView: 3,
            },

            660: {
                slidesPerView: 2,
            },
        }
    });

    $('body').on('change', '#topFilters input,#topFilters select', function(e) {
        e.preventDefault();
        $('#filtersForm').submit();
    });
</script>
<Script>
    var ENDPOINT = "{{ url('/classes/ajax') }}";
    var page = 1;
    //infinteLoadMore(page);

    $(window).scroll(function() {
        if ($(window).scrollTop() + $(window).height() >= $(document).height()) {
            page++;
            infinteLoadMore(page);
        }
    });

    function infinteLoadMore(page) {
        $.ajax({
                url: ENDPOINT + "?page=" + page,
                datatype: "html",
                type: "get",
                beforeSend: function() {
                    $('.auto-load').show();
                }
            })
            .done(function(response) {
                if (response.length == 0) {
                    $('.auto-load').html("We don't have more data to display :(");
                    return;
                }
                $('.auto-load').hide();
                $("#data-wrapper").append(response);
            })
            .fail(function(jqXHR, ajaxOptions, thrownError) {
                console.log('Server error occured');
            });
    }
</Script>
@endpush