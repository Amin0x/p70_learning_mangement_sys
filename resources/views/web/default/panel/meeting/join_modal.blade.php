<div class="d-none" id="joinMeetingLinkModal">
    <h3 class="section-title after-line font-20 text-dark-blue mb-25">{{ trans('panel.join_live_meeting') }}</h3>

    <div class="row">
        <div class="col-12 col-md-8">
            <div class="form-group">
                <label class="input-label">{{ trans('panel.url') }}</label>
                <input type="text" readonly name="link" class="form-control"/>
                <div class="invalid-feedback"></div>
            </div>
        </div>

        <div class="col-12 col-md-4">
            <div class="form-group">
                <label class="input-label">{{ trans('auth.password') }} ({{ trans('public.optional') }})</label>
                <input type="text" readonly name="password" class="form-control"/>
                <div class="invalid-feedback"></div>
            </div>
        </div>
    </div>
    <p class="font-weight-500 text-gray">{{ trans('panel.add_live_meeting_link_hint') }}</p>

    <div class="mt-30 d-flex align-items-center justify-content-end">
        <a href="" target="_blank" class="js-join-meeting-link btn btn-sm btn-primary">{{ trans('footer.join') }}</a>
        <button type="button" class="btn btn-sm btn-danger ml-10 close-swl">{{ trans('public.close') }}</button>
    </div>
</div>
@push('scripts_bottom')
    <script>
        (function ($) {
            $('body').on('click', '.js-join-reserve', function (e) {
                e.preventDefault();

                const reserve_id = $(this).attr('data-reserve-id');
                const meeting_password = $('.js-meeting-password-' + reserve_id).val();
                const meeting_link = $('.js-meeting-link-' + reserve_id).val();


                const $modalHtml = $('#joinMeetingLinkModal');

                Swal.fire({
                    html: '<div id="meetingLinkModal">' + $modalHtml.html() + '</div>',
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        const editModal = $('#meetingLinkModal');

                        editModal.find('.js-join-meeting-link').attr('href', '/panel/meetings/' + reserve_id + '/join');
                        editModal.find('input[name="password"]').val(meeting_password);
                        editModal.find('input[name="link"]').val(meeting_link);
                    }
                });
            })
        })(jQuery)
    </script>
@endpush
