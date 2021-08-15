<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ trans('admin/main.print') }} {{ $document->title }}</title>
    <link rel="stylesheet" href="/assets/admin/vendor/bootstrap/bootstrap.min.css"/>

    <style>
        .main-box {
            width: 90%;
            height: auto;
            overflow: hidden;
            border: 2px solid #999;
            min-height: 200px;
            margin: 20px auto 0;
            font-family: Tahoma, Arial, Helvetica, sans-serif;
        }

        .factor-logo-container {
            text-align: center;
            float: right;
            width: 60%;
            padding-top: 15px;
            margin-bottom: 40px;
        }

        .factor-logo-container img {
            height: 100px;
            max-height: 100px;
        }

        table {
            width: 90%;
            margin: 0 auto 0;
            font-size: .8em;
        }

        table th {
            border: 1px solid #999;
            padding: 8px;
            text-align: center;
        }

        input {
            font-family: Tahoma, Arial, Helvetica, sans-serif;
            font-size: 1em;
        }
    </style>
</head>
<body>
<div class="main-box">
    <div style="width: 20%;height: 100px;float: right"></div>
    <div class="factor-logo-container">
        <img src="{{ getGeneralSettings('logo') }}" class=""/>
        <br>
        <h3 style="margin-top: 5px">{{ trans('financial.financial_documents') }}</h3>
    </div>
    <div style="width: 20%;text-align: left;float: left;padding-top: 25px;padding-left:25px;font-size: .8em">
        <div>
            <span>{{ trans('admin/main.document_number') }}:</span>&nbsp;<label>{{ $document->id }}</label>
        </div>
        <div style="margin-top: 10px;">
            <span>{{ trans('admin/main.created_at') }}:</span>&nbsp;<label>{{ dateTimeFormat($document->created_at,'d F Y - H:i') }}</label>
        </div>
    </div>
    <div style="width: 100%;clear: both;"></div>
    <table>

        <th>{{ trans('admin/main.email') }}</th>
        <th>{{ trans('admin/main.mobile') }}</th>
        <th>{{ trans('admin/main.title') }}</th>
        <th>{{ trans('admin/main.type') }}</th>
        <th>{{ trans('admin/main.amount') }}({{ $currency }})</th>

        <tr>
            <th>{{ $document->user->email ?? '-' }}</th>
            <th>{{ $document->user->mobile ?? '-' }}</th>
            <th>
                @if(!empty($document->webinar_id))
                    <span class="d-block font-weight-bold">{{ trans('admin/main.item_purchased') }}</span>
                    <span class="d-block font-weight-bold">#{{ $document->webinar_id }}-{{ $document->webinar->title }}</span>
                @elseif(!empty($document->meeting_time_id))
                    <span class="d-block font-weight-bold">{{ trans('admin/main.item_purchased') }}</span>
                    <span class="d-block font-weight-bold">{{ trans('admin/main.meeting') }}</span>
                @elseif(!empty($document->subscribe_id))
                    <span class="d-block font-weight-bold">{{ trans('admin/main.purchased_subscribe') }}</span>
                @elseif(!empty($document->promotion_id))
                    <span class="d-block font-weight-bold">{{ trans('admin/main.purchased_promotion') }}</span>
                @endif
            </th>
            <th>
                @switch($document->type)
                    @case(\App\Models\Accounting::$addiction)
                    <span class="text-success">{{ trans('admin/main.addiction') }}</span>
                    @break
                    @case(\App\Models\Accounting::$deduction)
                    <span class="text-danger">{{ trans('admin/main.deduction') }}</span>
                    @break
                @endswitch
            </th>
            <th>{{ $document->amount }}</th>
        </tr>

    </table>

    <table>

        <tr>
            <th style="text-align: right;min-height: 100px;">
                {{ !empty($document->description) ? $document->description : 'Description' }}
            </th>
        </tr>

    </table>

    <div style="clear: both;width: 100%;height: 40px;"></div>

    <div style="width: 90%;margin: 0 auto 0">

        <div style="width: 33%;float: left">
            <span>{{ trans('public.created_by') }}:</span>&nbsp;
            <label>{{ !empty($document->creator_id) ? $document->creator->full_name : 'Automatic' }}</label>
        </div>
    </div>

    <div style="clear: both;width: 100%;height: 40px;"></div>
</div>
</body>
</html>
