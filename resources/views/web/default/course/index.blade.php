@extends(getTemplate().'.layouts.app')

@push('styles_top')
<link rel="stylesheet" href="/assets/default/css/css-stars.css">
<link rel="stylesheet" href="/assets/default/vendors/video/video-js.min.css">
@endpush


@section('content')

<div class="aa-video">
    <div class="aa-video-player__warpper" style="background-color: #002333;">
        <section class="aa-video-player container">
            <div class="row mt-4">
                <div class="col-12 mt-3">
                    <div class="aa-video-player__title">
                        <h1 class="text-white h1 mb-0">Fundamentals of DSLR Photography</h1>
                    </div>
                    <div class="aa-video-player__desc"><span class="text-white">Fundamentals of DSLR Photography</span></div>
                </div>
            </div>

            <div class="aa-video-player__vedio row mt-3">
                <div class="col-lg-8 col-md-12">
                    <div class="">
                        <!-- <img class="img-fluid" src="assets/imgs/w1.jpg" alt="" width="800px" height="600px"> -->
                        <div class="" id="playVideo" tabindex="-1" aria-labelledby="playVideoLabel" aria-hidden="true">
                            <div id="aaVideoPlayerBox" class="position-relative">
                                <video class="my-video" id="aaVideoJsId" style="fill: cover;" controls preload="auto" width="100%" height="100%" poster="{{ $course->getImage() }}">
                                </video>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 mt-md-2">
                    <div class="aa-video__class-list p-2" style="background-color: #001924;">

                        @if(!empty($course->files) and $course->files->count() > 0)
                        <div class="aa-video__class-list__title d-block font-weight-bold text-white  ml-1">{{ $webinarContentCount }} Lessons (<span>{{ convertMinutesToHourAndMinute(!empty($course->duration) ? $course->duration : 0) }} {{ trans('home.hours') }}</span>)</div>
                        <hr>
                        <div class="overflow-auto">
                            @foreach($course->files as $file)
                            <div class="aa-video__class-list__item d-block">
                                @if($file->accessibility == 'paid')
                                @if(!empty($user) and $hasBought)
                                @if($file->isVideo())
                                <a href="javascript;" data-id="{{ $file->id }}" class="aajsvidplay btn-transparent mr-15" data-toggle="tooltip" data-placement="top" title="{{ trans('public.play_online') }}">
                                    <i data-feather="play-circle" width="20" height="20" class="text-gray"></i>
                                    <span class="text-decoration-none text-white" href="#">{{ $file->title }}</span>
                                </a>
                                @else
                                <a href="{{ $course->getUrl() }}/file/{{ $file->id }}/download" class="mr-15">
                                    <i data-feather="download-cloud" width="20" height="20" class="text-gray"></i>
                                    <span class="text-decoration-none text-white" href="#">{{ $file->title }}</span>
                                </a>
                                @endif
                                @else
                                <a href="javascript;" class="mr-15 btn-transparent">
                                    <i data-feather="lock" width="20" height="20" class="text-gray"></i>
                                    <span class="text-decoration-none text-white" href="#">{{ $file->title }}</span>
                                </a>
                                @endif
                                @else
                                @if($file->isVideo())
                                <a href="javascript;" data-id="{{ $file->id }}" class="aajsvidplay btn-transparent mr-15" data-toggle="tooltip" data-placement="top" title="{{ trans('public.play_online') }}">
                                    <i data-feather="play-circle" width="20" height="20" class="text-gray"></i>
                                    <span class="text-decoration-none text-white" href="#">{{ $file->title }}</span>
                                </a>
                                @else
                                <a href="{{ $course->getUrl() }}/file/{{ $file->id }}/download" class="mr-15" data-toggle="tooltip" data-placement="top" title="{{ trans('home.download') }}">
                                    <i data-feather="download-cloud" width="20" height="20" class="text-gray"></i>
                                    <span class="text-decoration-none text-white" href="#">{{ $file->title }}</span>
                                </a>
                                @endif
                                @endif

                            </div>
                            @endforeach
                        </div>

                        @endif
                    </div>
                </div>
            </div>
        </section>
    </div>

    <section class="aa-content container mt-5">
        <div class="row">
            <div class="col-lg-8 col-md-12">

                <div class="mt-3">
                    <div class="aa-top-badg d-flex justify-content-around">
                        <div class="px-2 py-3 bg-gradient bg-dark text-light text-center rounded" style="width: 128px;">
                            <p class="fw-bold m-1"><img src="assets/imgs/yes-check-blue.svg" alt=""></p>
                            <p class="m-0" style="color: #b2b3b5;">Beginner level</p>
                        </div>
                        <div class="px-2 py-3 bg-gradient bg-dark text-light text-center rounded" style="width: 128px;">
                            <p class="fw-bold m-1">{{ $course->sales_count }}</p>
                            <p class="m-0" style="color: #b2b3b5;">Students</p>
                        </div>
                        <div class="px-2 py-3 bg-gradient bg-dark text-light text-center rounded" style="width: 128px;">
                            <p class="fw-bold m-1">{{ convertMinutesToHourAndMinute(!empty($course->duration) ? $course->duration : 0) }} {{ trans('home.hours') }}</p>
                            <p class="m-0" style="color: #b2b3b5;">Duration</p>
                        </div>
                    </div>
                </div>

                <div class="aa-content__about mt-4">
                    @if($course->description)
                    <div class="mt-20">
                        <h2 class="section-title after-line">{{ trans('product.Webinar_description') }}</h2>
                        <div class="mt-15 course-description">
                            {!! $course->description !!}
                        </div>
                    </div>
                    @endif
                </div>

                @if($course->tags->count() > 0)
                <hr class="my-4">
                <section class="aa-related-skills">
                    <div class="aa-related-skills__header mb-2">
                        <span class="h3">{{ trans('public.tags') }}</span>
                    </div>
                    <div class="aa-related-skills__badge">
                        @foreach($course->tags as $tag)
                        <div class="px-3 border rounded d-inline-block">{{ $tag->title }}</div>
                        @endforeach
                    </div>
                </section>
                @endif

                @php
                /*
                @if(!empty($course->prerequisites) and $course->prerequisites->count() > 0)
                <section class="aa-related-classess mt-5">
                    <div class="row">
                        @foreach($course->prerequisites as $prerequisite)
                        <div class="col-6">
                            <div class="aa-related-classess__warpper">
                                <div class="aa-related-classess__card card shadow-sm">
                                    <a href="{{ $prerequisite->prerequisiteWebinar->getUrl() }}"><img src="{{ $prerequisite->prerequisiteWebinarr->getImage() }}" alt="{{ $webinar->title }}" class="aa-related-classess__img img-fluid"></a>
                                    <div class="aa-related-classess__card-content p-3">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="aa-related-classess__card-tilte">{{ $prerequisite->prerequisiteWebinar->title }}</div>
                                            <div class="aa-related-classess__card-likes">110 Like</div>
                                        </div>
                                        <div class="aa-related-classess__card-commont mt-2">3 comments</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach

                    </div>
                </section>
                @endif
                */
                @endphp

            </div>
            <div class="col-4"></div>
        </div>
    </section>

</div>


@include('web.default.course.share_modal')
@endsection

@push('scripts_bottom')
<script src="/assets/default/js/parts/time-counter-down.min.js"></script>
<script src="/assets/default/vendors/barrating/jquery.barrating.min.js"></script>
<script src="/assets/default/vendors/video/video.min.js"></script>
<script src="/assets/default/vendors/video/youtube.min.js"></script>
<script src="/assets/default/vendors/video/vimeo.js"></script>

<script>
    var webinarDemoLang = '{{ trans('webinars.webinar_demo') }}';
    var replyLang = '{{ trans('panel.reply ') }}';
    var closeLang = '{{ trans('public.close ') }}';
    var saveLang = '{{ trans('public.save ') }}';
    var reportLang = '{{ trans('panel.report ') }}';
    var reportSuccessLang = '{{ trans('panel.report_success ') }}';
    var reportFailLang = '{{ trans('panel.report_fail ') }}';
    var messageToReviewerLang = '{{ trans('public.message_to_reviewer ') }}';
    var copyLang = '{{ trans('public.copy ') }}';
    var copiedLang = '{{ trans('public.copied ') }}';
    var learningToggleLangSuccess = '{{ trans('public.course_learning_change_status_success ') }}';
    var learningToggleLangError = '{{ trans('public.course_learning_change_status_error ') }}';
    var notLoginToastTitleLang = '{{ trans('public.not_login_toast_lang ') }}';
    var notLoginToastMsgLang = '{{ trans('public.not_login_toast_msg_lang ') }}';
    var notAccessToastTitleLang = '{{ trans('public.not_access_toast_lang ') }}';
    var notAccessToastMsgLang = '{{ trans('public.not_access_toast_msg_lang ') }}';
    var canNotTryAgainQuizToastTitleLang = '{{ trans('public.can_not_try_again_quiz_toast_lang ') }}';
    var canNotTryAgainQuizToastMsgLang = '{{ trans('public.can_not_try_again_quiz_toast_msg_lang ') }}';
    var canNotDownloadCertificateToastTitleLang = '{{ trans('public.can_not_download_certificate_toast_lang ') }}';
    var canNotDownloadCertificateToastMsgLang = '{{ trans('public.can_not_download_certificate_toast_msg_lang ') }}';
    var sessionFinishedToastTitleLang = '{{ trans('public.session_finished_toast_title_lang ') }}';
    var sessionFinishedToastMsgLang = '{{ trans('public.session_finished_toast_msg_lang ') }}';

    var player = undefined;

    $(document).ready(function() {
        $('body').on('click', '.aajsvidplay', function(e) {
            console.log('......play viedo....');
            e.preventDefault();

            if (player !== undefined) {
                player.dispose();
            }

            const $modal = $('#playVideo');
            const $modalLoading = $('#aaImgCoverBox');
            const $modalVideoContent = $('#aaVideoPlayerBox');

            $modalLoading.addClass('d-none');
            $modalVideoContent.removeClass('d-none');

            const file_id = $(this).attr('data-id');

            $.post('/course/getFilePath', {
                file_id: file_id
            }, function(result) {
                if (result && result.code === 200) {
                    const storage = result.storage;

                    console.log(result.path)
                    $('#aaVideoJsId').attr('src', result.path);
                    $('#aaVideoJsId').removeAttr('poster');
                    $("#aaVideoJsId").load();
                    $("#aaVideoJsId").play();

                    const options = {
                        autoplay: false,
                        preload: 'auto',
                    };

                    player = videojs('my-video', options);
                } else {
                    $.toast({
                        heading: notAccessToastTitleLang,
                        text: notAccessToastMsgLang,
                        bgColor: '#f63c3c',
                        textColor: 'white',
                        hideAfter: 10000,
                        position: 'bottom-right',
                        icon: 'error'
                    });
                }
            }).fail(err => {
                $.toast({
                    heading: notAccessToastTitleLang,
                    text: notAccessToastMsgLang,
                    bgColor: '#f63c3c',
                    textColor: 'white',
                    hideAfter: 10000,
                    position: 'bottom-right',
                    icon: 'error'
                });
            });


        });
    });
</script>

<script src="/assets/default/js/parts/comment.min.js"></script>
<script src="/assets/default/js/parts/webinar_show.min.js"></script>
@endpush