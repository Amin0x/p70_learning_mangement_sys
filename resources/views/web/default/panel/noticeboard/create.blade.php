@extends(getTemplate() .'.panel.layouts.panel_layout')

@push('styles_top')
    <link rel="stylesheet" href="/assets/vendors/summernote/summernote-bs4.min.css">
@endpush

@section('content')
    <section>
        <h2 class="section-title">{{ trans('panel.new_noticeboard') }}</h2>

        <div class="panel-section-card py-20 px-25 mt-20">
            <form action="/panel/noticeboard/{{ !empty($noticeboard) ? $noticeboard->id.'/update' : 'store' }}" method="post">
                {{ csrf_field() }}

                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="input-label control-label" for="inputDefault">{!! trans('public.title') !!}</label>
                            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" value="{{ !empty($noticeboard) ? $noticeboard->title : old('title') }}">
                            <div class="invalid-feedback">@error('title') {{ $message }} @enderror</div>
                        </div>

                        <div class="form-group">
                            <label class="input-label control-label">{!! trans('admin/main.type') !!}</label>
                            <select name="type" id="typeSelect" class="form-control @error('type') is-invalid @enderror">
                                <option value="" selected disabled></option>

                                @foreach(\App\Models\Noticeboard::$types as $type)
                                    <option value="{{ $type }}" @if(!empty($noticeboard) and $noticeboard->type == $type) selected @endif>{{ trans('public.'.$type) }}</option>
                                @endforeach
                            </select>
                            <div class="invalid-feedback">@error('type') {{ $message }} @enderror</div>
                        </div>

                    </div>
                </div>

                <div class="form-group ">
                    <label class="input-label control-label">{{ trans('site.message') }}</label>
                    <textarea name="message" class="summernote form-control text-left  @error('message') is-invalid @enderror">{{ (!empty($noticeboard)) ? $noticeboard->message :'' }}</textarea>
                    <div class="invalid-feedback">@error('message') {{ $message }} @enderror</div>
                </div>

                <div class="form-group">
                    <button id="submitForm" class="btn btn-primary btn-sm" type="button">{{ trans('notification.post_notice') }}</button>
                </div>
            </form>
        </div>
    </section>
@endsection

@push('scripts_bottom')
    <script src="/assets/vendors/summernote/summernote-bs4.min.js"></script>
    <script>
        (function ($) {
            "use strict";
            var noticeboard_success_send = '{{ trans('panel.noticeboard_success_send') }}';

            $('.summernote').summernote({
                tabsize: 2,
                height: 400,
                placeholder: $('.summernote').attr('placeholder'),
            });

            $('body').on('click', '#submitForm', function (e) {
                e.preventDefault();
                const $this = $(this);
                $this.addClass('loadingbar primary').prop('disabled', true);

                const $form = $this.closest('form');
                const action = $form.attr('action');

                const data = $form.serializeObject();

                $.post(action, data, function (result) {
                    if (result && result.code === 200) {
                        Swal.fire({
                            icon: 'success',
                            html: '<h3 class="font-16 text-center text-dark-blue">' + noticeboard_success_send + '</h3>',
                            showConfirmButton: false,
                        });

                        setTimeout(() => {
                            window.location.href = '/panel/noticeboard';
                        }, 2000)
                    }
                }).fail(err => {
                    $this.removeClass('loadingbar primary').prop('disabled', false);
                    var errors = err.responseJSON;
                    if (errors && errors.errors) {
                        Object.keys(errors.errors).forEach((key) => {
                            const error = errors.errors[key];
                            let element = $form.find('[name="' + key + '"]');
                            element.addClass('is-invalid');
                            element.parent().find('.invalid-feedback').text(error[0]);
                        });
                    }
                })
            })
        })(jQuery)
    </script>
@endpush
