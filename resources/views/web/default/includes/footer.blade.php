@php
    $socials = getSocials();
    if (!empty($socials) and count($socials)) {
        $socials = collect($socials)->sortBy('order')->toArray();
    }

@endphp

<footer class="footer bg-secondary position-relative user-select-none">
    <div class="container">
     <div class=" pt-50 pb-20 d-flex align-items-center justify-content-between">
        <div class="footer-logo">
                <a href="/">
                    @if(!empty($generalSettings['footer_logo']))
                        <img src="{{ $generalSettings['footer_logo'] }}" class="img-cover" alt="footer logo">
                    @endif
                </a>
            </div>
            <div class="footer-social">
                @foreach($socials as $social)
                    <a class="social-icon" href="{{ $social['link'] }}">
                        <img src="{{ $social['image'] }}" alt="{{ $social['title'] }}" class="mr-5"> {{ $social['title'] }}
                    </a>
                @endforeach
            </div>
        </div>
        <div class="base-footer pb-50">
                <span class="footer-title footer-section">© Sanad Academy, 2021</span>
                <span class="footer-links">
                    <a class="footer-section" href="/contact">Contact us</a>
                    <a class="footer-section" href="/privacy">Privacy</a>
                    <a class="footer-section last" href="/terms">Terms</a>
                </span>
            </div>
    </div>
</footer>
@push('scripts_bottom')
    <link href="/assets/default/vendors/flagstrap/css/flags.css" rel="stylesheet">
    <script src="/assets/default/vendors/flagstrap/js/jquery.flagstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#localItems').flagStrap({
                inputName: "country",
                buttonSize: "btn-sm",
                buttonType: "btn-default",
                scrollable: true,
                labelMargin: "5px",
                scrollableHeight: "350px",
            });

            $('.language-select').find("select").change(function () {
                var $form = $(this).closest('form');
                var val = $(this).val();

                if (val && val !== '') {
                    $form.find('input[name="locale"]').val(val);
                    $form.submit();
                }
            })
        })
    </script>
@endpush