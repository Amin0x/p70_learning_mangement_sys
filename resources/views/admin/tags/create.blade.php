@extends('admin.layouts.app')

@push('libraries_top')


@endpush

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{!empty($tag) ?trans('/admin/main.edit'): trans('admin/main.new') }} {{ trans('admin/main.tag') }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{ trans('admin/main.dashboard') }}</a>
                </div>
                <div class="breadcrumb-item active"><a href="/admin/tags">{{ trans('admin/main.tags') }}</a>
                </div>
                <div
                    class="breadcrumb-item">{{!empty($tag) ?trans('/admin/main.edit'): trans('admin/main.new') }}</div>
            </div>
        </div>

        <div class="section-body">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <form action="/admin/tags/{{ !empty($tag) ? $tag->id.'/update' : 'store' }}"
                                  method="Post">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label>{{ trans('/admin/main.title') }}</label>
                                    <input type="text" name="title"
                                           class="form-control  @error('title') is-invalid @enderror"
                                           value="{{ !empty($tag) ? $tag->title : old('title') }}"
                                           placeholder="{{ trans('admin/main.create_field_title_placeholder') }}"/>
                                    @error('title')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>

                                <div class=" mt-4">
                                    <button class="btn btn-primary">{{ trans('admin/main.submit') }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts_bottom')
    <script>
        $(document).ready(function () {
            $('body').on('change', '#isAdmin', function () {
                if (this.checked) {
                    $('#sections').removeClass('d-none');
                } else {
                    $('#sections').addClass('d-none');
                }
            });

            $('.section-parent').on('change.bootstrapSwitch', function (e) {
                let $this = $(this);
                let parent = $(this).parent().closest('.section-box');
                let isChecked = e.target.checked;

                if (isChecked) {
                    parent.find('input[type="checkbox"].section-child').prop('checked', true);
                } else {
                    parent.find('input[type="checkbox"].section-child').prop('checked', false);
                }
            });

            $('.section-child').on('change.bootstrapSwitch', function (e) {
                let $this = $(this);
                let parent = $(this).parent().closest('.section-box');
                let setChecked = false;
                let allChild = parent.find('input[type="checkbox"].section-child');

                allChild.each(function (index, child) {
                    if ($(child).is(':checked')) {
                        setChecked = true;
                    }
                });

                let parentInput = parent.find('input[type="checkbox"].section-parent');
                parentInput.prop('checked', setChecked);
            });
        })
    </script>
@endpush
