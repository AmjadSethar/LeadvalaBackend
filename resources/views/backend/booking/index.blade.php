@extends('backend.layouts.master')
@section('title', __('static.booking.all'))
@section('content')
@use('App\Models\BookingStatus')
@php
$statuses = BookingStatus::whereNull('deleted_at')->where('status', true)->get();
@endphp
<div class="card">
    <div class="card-header d-flex align-items-center">
        <h5>{{ __('static.booking.all') }}</h5>
    </div>
    <div class="card-body common-table">
        <div class="booking-table">
            <div class="booking-select">
                <form>
                    <select class="select-2 form-control" id="bookingStatusFilter" data-placeholder="{{__('static.booking.select_booking_status')}}">
                        <option class="select-placeholder" value=""></option>
                        @foreach ($statuses as $status)
                        <option value="{{$status?->slug}}" @if (request()->status == $status?->slug) selected @endif>{{$status?->name}}</option>
                        @endforeach
                    </select>
                </form>
            </div>
            <div class="table-responsive">
                {!! $dataTable->table() !!}
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')
{!! $dataTable->scripts() !!}
<script>
    (function($) {
        "use strict";

        $(document).ready(function() {
            if ($.validator) {
                $.validator.setDefaults({
                    ignore: []
                });
            }
            var table = $('#dataTableBuilder').DataTable();
            $('#bookingStatusFilter').change(function() {
                var selectedStatus = $(this).val();
                var newUrl = "{{ route('backend.booking.index') }}";
                if (selectedStatus) {
                    newUrl += '?status=' + selectedStatus;
                }

                // Debug AJAX call

                table.ajax.url(newUrl).load();
                location.href = newUrl;
            });
        });
    })(jQuery);
</script>

@endpush
