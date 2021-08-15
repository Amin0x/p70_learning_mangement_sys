@extends(getTemplate() .'.panel.layouts.panel_layout')

@section('content')
    <section>
        <h2 class="section-title">{{ trans('panel.noticeboards') }}</h2>

        @if(!empty($noticeboards) and !$noticeboards->isEmpty())

            <div class="panel-section-card py-20 px-25 mt-20">
                <div class="row">
                    <div class="col-12 ">
                        <div class="table-responsive">
                            <table class="table custom-table text-center ">
                                <thead>
                                <tr>
                                    <th class="text-left text-gray">{{ trans('webinars.title') }}</th>
                                    <th class="text-center text-gray">{{ trans('site.message') }}</th>
                                    <th class="text-center text-gray">{{ trans('public.type') }}</th>
                                    <th class="text-center text-gray">{{ trans('public.date') }}</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach($noticeboards as $noticeboard)
                                    <tr class="noticeboard-item">
                                        <td class="text-left js-noticeboard-title text-dark-blue font-weight-500 align-middle" width="25%">
                                            {{ $noticeboard->title }}
                                        </td>
                                        <td class="align-middle">
                                            <button type="button" class="js-view-message btn btn-sm btn-gray200">{{ trans('public.view') }}</button>
                                            <input type="hidden" class="js-noticeboard-message" value="{{ nl2br($noticeboard->message) }}">
                                        </td>
                                        <td class="text-dark-blue font-weight-500 align-middle">
                                            {{ trans('public.'.$noticeboard->type) }}
                                        </td>
                                        <td class="js-noticeboard-time text-dark-blue font-weight-500 align-middle">{{ dateTimeFormat($noticeboard->created_at,'Y M j | H:i') }}</td>
                                        <td class="text-right align-middle">
                                            <div class="btn-group dropdown table-actions">
                                                <button type="button" class="btn-transparent dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i data-feather="more-vertical" height="20"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a href="/panel/noticeboard/{{ $noticeboard->id }}/edit" class="webinar-actions d-block mt-10 text-hover-primary">{{ trans('public.edit') }}</a>
                                                    <a href="/panel/noticeboard/{{ $noticeboard->id }}/delete" class="delete-action webinar-actions d-block mt-10 text-hover-primary">{{ trans('public.delete') }}</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        @else
            @include(getTemplate() . '.includes.no-result',[
                'file_name' => 'comment.png',
                'title' => trans('panel.comments_no_result'),
                'hint' =>  nl2br(trans('panel.comments_no_result_hint')) ,
            ])
        @endif
    </section>

    <div class="my-30">
        {{ $noticeboards->links('vendor.pagination.panel') }}
    </div>

    <div class="d-none" id="noticeboardMessageModal">
        <div class="text-center">
            <h3 class="modal-title font-16 font-weight-bold text-dark-blue"></h3>
            <span class="modal-time d-block font-12 text-gray mt-15"></span>
            <p class="modal-message font-weight-500 text-gray mt-2"></p>
        </div>
    </div>

@endsection

@push('scripts_bottom')
    <script>
        (function ($) {
            $('body').on('click', '.js-view-message', function (e) {
                const $this = $(this);

                const card = $this.closest('.noticeboard-item');
                const title = card.find('.js-noticeboard-title').text();
                const time = card.find('.js-noticeboard-time').text();
                const message = card.find('.js-noticeboard-message').val();

                const modal = $('#noticeboardMessageModal');
                modal.find('.modal-title').text(title);
                modal.find('.modal-time').text(time);
                modal.find('.modal-message').html(message);


                Swal.fire({
                    html: modal.html(),
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '30rem',
                });
            });
        })(jQuery)
    </script>
@endpush
