@extends('admin.layouts.app')

@push('libraries_top')


@endpush

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{!empty($role) ?trans('/admin/main.edit'): trans('admin/main.new') }} {{ trans('admin/main.role') }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{ trans('admin/main.dashboard') }}</a>
                </div>
                <div class="breadcrumb-item active"><a href="/admin/roles">{{ trans('admin/main.roles') }}</a>
                </div>
                <div class="breadcrumb-item">{{!empty($role) ?trans('/admin/main.edit'): trans('admin/main.new') }}</div>
            </div>
        </div>
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="section-body">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="/admin/roles/{{ !empty($role) ? $role->id.'/update' : 'store' }}" method="Post">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-6">
                                        <div class="form-group @error('name') is-invalid @enderror">
                                            @if(empty($role))
                                                <label>{{ trans('admin/main.name') }}</label>
                                            @endif
                                            <input type="{{ !empty($role) ? 'hidden' : 'text' }}" name="name" class="form-control"
                                                   value="{{ !empty($role) ? $role->name : old('name') }}"
                                                   placeholder=""/>
                                        </div>

                                        @error('name')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                        @enderror

                                        <div class="form-group @error('caption') is-invalid @enderror">
                                            <label>{{ trans('admin/main.caption') }}</label>
                                            <input type="text" name="caption" class="form-control" value="{{ !empty($role) ? $role->caption : old('caption') }}"
                                                   placeholder="{{ trans('admin/main.create_field_name_placeholder') }}"/>

                                            @error('caption')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                            @enderror
                                        </div>

                                        @if(empty($role) or !$role->isDefaultRole())
                                            <div class="form-group mb-1">
                                                <label class="custom-switch pl-0">
                                                    <input id="isAdmin" type="checkbox" name="is_admin" class="custom-switch-input section-parent" {{ (!empty($role) && $role->is_admin) ? 'checked' : '' }}>
                                                    <span class="custom-switch-indicator"></span>
                                                    <span class="custom-switch-description">{{ trans('admin/main.is_admin') }}</span>
                                                </label>
                                            </div>
                                            <div class="text-muted text-small mt-1">{{ trans('admin/main.new_role_admin_access_hint') }}</div>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group {{ (!empty($role) && $role->is_admin) ? '' :'d-none'}}" id="sections">

                                    <h2 class="section-title">{{ trans('admin/main.permission') }}</h2>
                                    <p class="section-lead">
                                        {{ trans('admin/main.permission_description') }}
                                    </p>

                                    <div class="row">
                                        @foreach($sections as $section)
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <div class="card card-primary section-box">
                                                    <div class="card-header">
                                                        <input type="checkbox" name="permissions[]" id="permissions_{{ $section->id }}" value="{{ $section->id }}"
                                                               {{isset($permissions[$section->id]) ? 'checked' : ''}} class="form-check-input mt-0 section-parent">
                                                        <label class="form-check-label font-16 font-weight-bold cursor-pointer" for="permissions_{{ $section->id }}">
                                                            {{ $section->caption }}
                                                        </label>
                                                    </div>

                                                    @if(!empty($section->children))
                                                        <div class="card-body">

                                                            @foreach($section->children as $key => $child)
                                                                <div class="form-check mt-1">
                                                                    <input type="checkbox" name="permissions[]" id="permissions_{{ $child->id }}" value="{{ $child->id }}"
                                                                           {{ isset($permissions[$child->id]) ? 'checked' : '' }} class="form-check-input section-child">
                                                                    <label class="form-check-label cursor-pointer mt-0" for="permissions_{{ $child->id }}">
                                                                        {{ $child->caption }}
                                                                    </label>
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                    @endif
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
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

            $('.section-parent').on('change', function (e) {
                let $this = $(this);
                let parent = $(this).parent().closest('.section-box');
                let isChecked = e.target.checked;

                if (isChecked) {
                    parent.find('input[type="checkbox"].section-child').prop('checked', true);
                } else {
                    parent.find('input[type="checkbox"].section-child').prop('checked', false);
                }
            });

            $('.section-child').on('change', function (e) {
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
