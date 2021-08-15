@if(!empty($webinars) and !$webinars->isEmpty())
<div class="section-header mt-40">
                        <h2>Teaching</h2>
                    </div>
                    <div class="section-content row classes populated mt-20">  

        @foreach($webinars as $webinar)
        <div class="col-4 class-column">
                            <div class="card ss-card ss-class shadow-sm"  style="border-radius: 20px; overflow: hidden;">
                                <div class="ss-card--top-el skillshare-original-gradient"></div>
                                <div role="img" aria-label="skillshare original" class="ss-card--top-el skillshare-original"></div>


                                <a class="ss-card__thumbnail js-class-preview" href="{{ $webinar->getUrl() }}" aria-label="">
                                    <div class="ss-card__thumbnail-img-holder">
                                        <img width="458" height="252" class="thumbnail-img img-fluid" src="{{ $webinar->getImage() }}" alt="{{ $webinar->title }}" loading="lazy">
                                        <div style="position:absolute" class="play-button ss-icon-nsk-play-arrow-rounded ss-card--top-el"></div>
                                    </div>
                                </a>

                                <div class="ss-card__content-wrapper p-3">
                                    <div class="ss-card__content">
                                        <div class="ss-class__stats" style="display: flex; justify-content: space-between;">
                                            <div class="ss-class__stats__duration" style="font-size: 13px; font-weight: 700;">{{ convertMinutesToHourAndMinute($webinar->duration) }} {{ trans('home.hours') }}</div>
                                            <div class="ss-class__stats__stud-count" style="font-size: 13px; font-weight: 700;"><!-- 14,501 students --></div>
                                        </div>

                                        <div class="ss-card__title-wrapper" style="margin-top: 8px;">
                                            <p class="ss-card__title">
                                                <a href="{{ $webinar->getUrl() }}" style="text-decoration: none; font-size: 18px; font-weight: 700; color: #212121;">{{ $webinar->title }}</a>
                                            </p>
                                        </div>

                                        <div class="ss-card__placeholder-container">
                                            <div class="ss-card__teacher-placeholder">
                                            </div>

                                            <div class="wishlist-button-container">
                                                <div class="sc-gisBJw gAvyyl">
                                                    <span class="ref">
                                                        <div class="save-class" role="button">
                                                            <div class="icon sc-bdVaJa jqPDNX">
                                                                <svg class="save-class-icon" height="24" role="button" viewBox="0 0 24 24" width="24"> 
                                                                    <title>Save Class</title>
                                                                    <g fill="none" fill-rule="nonzero">
                                                                        <path fill="#394649"
                                                                            d="M6 20.586l5.224-5.223a1.1 1.1 0 0 1 1.556 0L18 20.586V4a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v16.586zM7 2h10a2 2 0 0 1 2 2v17.31a.7.7 0 0 1-1.195.495l-5.732-5.734a.1.1 0 0 0-.142 0l-5.736 5.734A.7.7 0 0 1 5 21.31V4a2 2 0 0 1 2-2z">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                            </div>
                                                        </div>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
        @endforeach
        </div>
    </div>

@endif

