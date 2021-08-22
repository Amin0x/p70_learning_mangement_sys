@php
    $userLanguages = !empty($generalSettings['site_language']) ? [$generalSettings['site_language'] => getLanguages($generalSettings['site_language'])] : [];

    if (!empty($generalSettings['user_languages']) and is_array($generalSettings['user_languages'])) {
        $userLanguages = getLanguages($generalSettings['user_languages']);
    }

    $localLanguage = [];

    foreach($userLanguages as $key => $userLanguage) {
        $localLanguage[localeToCountryCode($key)] = $userLanguage;
    }

@endphp

<div class="top-navbar d-flex border-bottom">
    <div class="container">
        <div class="top-contact-box border-bottom ">


            <div class="d-flex align-items-center justify-content-end">


                <form action="/locale" method="post" class="mx-md-3">
                    {{ csrf_field() }}

                    <input type="hidden" name="locale">

                    <div class="language-select">
                        <div id="localItems"
                             data-selected-country="{{ localeToCountryCode(mb_strtoupper(app()->getLocale())) }}"
                             data-countries='{{ json_encode($localLanguage) }}'
                        ></div>
                    </div>
                </form> 
                
                
            </div>


        </div>

        
    </div>
</div>


@push('scripts_bottom')
    <link href="/assets/default/vendors/flagstrap/css/flags.css" rel="stylesheet">
    <script src="/assets/default/vendors/flagstrap/js/jquery.flagstrap.min.js"></script>
    <script src="/assets/default/js/parts/top_nav_flags.min.js"></script>
@endpush
