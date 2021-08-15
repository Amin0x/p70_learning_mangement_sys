@extends('admin.layouts.app')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{ trans('admin/main.account_types') }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{ trans('admin/main.dashboard') }}</a></div>
                <div class="breadcrumb-item">{{ trans('admin/main.account_types') }}</div>
            </div>
        </div>

        <div class="section-body">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <form action="/admin/settings/account_types" method="post">
                                {{ csrf_field() }}

                                <div class="row">
                                    <div class="col-12 col-md-6">
                                        <div id="addAccountTypes" class="ml-3">
                                            <strong class="d-block mb-4">{{ trans('admin/main.add_account_types') }}</strong>

                                            <div class="form-group main-row">
                                                <div class="d-flex align-items-stretch">
                                                    <input type="text" name="value[]"
                                                           class="form-control w-auto flex-grow-1"
                                                           placeholder="{{ trans('admin/main.choose_title') }}"/>

                                                    <button type="button" class="btn btn-success add-btn">+ {{ trans('admin/main.add') }}</button>
                                                </div>
                                            </div>

                                            @if(!empty($value) and count($value))
                                                @foreach($value as $item)
                                                    <div class="form-group">
                                                        <div class="d-flex align-items-stretch">
                                                            <input type="text" name="value[]"
                                                                   class="form-control w-auto flex-grow-1"
                                                                   value="{{ $item }}"
                                                                   placeholder="{{ trans('admin/main.choose_title') }}"/>

                                                            <button type="button" class="btn remove-btn btn-danger">{{ trans('admin/main.remove') }}</button>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-success">{{ trans('admin/main.save_change') }}</button>
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
            $('body').on('click', '.add-btn', function (e) {
                e.preventDefault();
                var mainRow = $(this).closest('.main-row');

                var copy = mainRow.clone();
                copy.removeClass('main-row');
                copy.find('.add-btn').addClass('remove-btn btn-danger').removeClass('add-btn btn-success').text('{{ trans('admin/main.remove') }}');
                var copyHtml = copy.prop('innerHTML');
                copyHtml = copyHtml.replace(/\[record\]/g, '[' + randomString() + ']');
                copy.html(copyHtml);
                mainRow.parent().append(copy);
            });

            $('body').on('click', '.remove-btn', function (e) {
                e.preventDefault();
                $(this).closest('.form-group').remove();
            });

            function randomString() {
                var text = "";
                var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

                for (var i = 0; i < 5; i++)
                    text += possible.charAt(Math.floor(Math.random() * possible.length));

                return text;
            }

        })
    </script>
@endpush
