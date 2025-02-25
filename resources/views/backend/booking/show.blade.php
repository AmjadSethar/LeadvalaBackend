@extends('backend.layouts.master')

@section('title', __('static.booking.details'))

@section('content')
@use('app\Helpers\Helpers')
    <div class="row g-sm-4 g-2">
        <div class="col-xxl-8 col-12">
            <div class="card tab2-card">
                <div class="card-header d-flex align-items-center gap-2 justify-content-between">
                    <div>
                        <h5>{{ __('static.booking.details') }} #{{ $booking->booking_number }}</h5>
                        <span>{{ __('static.booking.created_at') }}{{ $booking->created_at->format('j F Y, g:i A') }}</span>
                    </div>
                </div>
                <div class="card-body">
                    <form route="backend.update.settings" method="PUT" enctype="multipart/form-data"
                        class="needs-validation user-add">
                        <div class="sub-booking-table">
                            <div class="table-responsive service-detail custom-scrollbar">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>{{__('static.booking.sub_booking_no')}}</th>
                                            <th>{{__('static.booking.service_title')}}</th>
                                            <th>{{__('static.booking.service_provider')}}</th>
                                            <th>{{__('static.booking.service_rate')}}</th>
                                            <th>{{__('static.booking.sub_booking_details')}}</th>
                                        </tr>
                                    </thead>
                                    @forelse ($booking->sub_bookings as $sub_booking)
                                        <tbody>
                                            <tr>
                                                <td>#{{ $sub_booking?->booking_number }}</td>
                                                <td>{{ $sub_booking?->service?->title }}</td>
                                                <td>{{ $sub_booking?->provider?->name }}</td>
                                                <td>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $sub_booking->service->service_rate }}</td>
                                                <td>
                                                    <a href="{{ route('backend.booking.showChild', $sub_booking->id) }}" class="booking-icon show-icon">
                                                        <i data-feather="eye"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            @empty
                                            <tr>
                                                <div class="d-flex flex-column no-data-detail">
                                                    <img class="mx-auto d-flex" src="{{ asset('admin/images/svg/no-data.svg') }}" alt="no-image">
                                                    <div class="data-not-found">
                                                        <span>{{__('static.data_not_found')}}</span>
                                                    </div>
                                                </div>
                                            </tr>
                                        </tbody>
                                    @endforelse
                                </table>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-xxl-4 col-12">
            <div class="row g-4">
                <div class="col-xxl-12 col-xl-6 col-12">
                    <div class="booking-detail card">
                        <div class="booking-header">
                            <h4>{{__('static.consumer_details')}}</h4>
                        </div>
                        <ul>
                            <li>
                                <p>{{__('static.booking.consumer_name')}}:</p>
                                <span>{{ $booking?->consumer?->name }}</span>
                            </li>
                            <li>
                                <p>{{__('static.phone')}}:</p>
                                <span>+{{ $booking?->consumer?->code . ' ' . $booking?->consumer?->phone }}</span>
                            </li>

                            <li>
                                <p>{{__('static.country')}}:</p>
                                <span>{{ $booking->consumer?->getPrimaryAddressAttribute()?->country?->name }}</span>
                            </li>
                            <li>
                                <p>{{__('static.state')}}:</p>
                                <span>{{ $booking->consumer?->getPrimaryAddressAttribute()?->state?->name }}</span>
                            </li>
                            <li>
                                <p>{{__('static.city')}}:</p>
                                <span>{{ $booking->consumer?->getPrimaryAddressAttribute()?->city }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xxl-12 col-xl-6 col-12">
                    <div class="booking-detail card summary-detail">
                        <div class="booking-header">
                            <h4>{{__('static.summary')}}</h4>
                        </div>
                        <ul>
                            <li>
                                <p>{{__('static.booking.payment_method')}}:</p>
                                <span>{{ $booking->payment_method }}</span>
                            </li>
                            <li>
                                <p>{{__('static.booking.payment_status')}}:</p>
                                <span>{{ $booking->payment_status }}</span>
                            </li>
                            <li>
                                <p>{{__('static.booking.total_extra_servicemen')}}:</p>
                                <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->total_extra_servicemen ?? 0 }}</span>
                            </li>
                            <li>
                                <p>{{__('static.booking.total_servicemen_charge')}}:</p>
                                <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->total_serviceman_charge ?? 0 }}</span>
                            </li>
                            <li>
                                <p>{{__('static.booking.coupon_discount')}}:</p>
                                <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->coupon_total_discount ?? 0 }}</span>
                            </li>
                            <li>
                                <p>{{__('static.tax_total')}}:</p>
                                <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->tax ?? 0 }}</span>
                            </li>
                            <li>
                                <p>{{__('static.sub_total')}}:</p>
                                <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->subtotal ?? 0 }}</span>
                            </li>
                            @if (isset($booking->platform_fees))
                                <li>
                                    <p>{{__('static.settings.platform_fees')}}:</p>
                                    <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->platform_fees }}</span>
                                </li>
                            @endif
                            <li>
                                <p>{{__('static.total')}}:</p>
                                <span>{{Helpers::getSettings()['general']['default_currency']->symbol}} {{ $booking->total }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="{{ asset('admin/js/vectormap.min.js') }}"></script>
    <script src="{{ asset('admin/js/vectormap.js') }}"></script>
    <script src="{{ asset('admin/js/vectormapcustom.js') }}"></script>
@endpush
