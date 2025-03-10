@use('App\Models\Booking')
@use('app\Helpers\Helpers')
@use('App\Enums\BookingEnum')
@use('App\Enums\BookingEnumSlug')
@extends('backend.layouts.master')
@section('title', __('static.dashboard.dashboard'))
@section('breadcrumbs')
<li class="breadcrumb-item active">{{ __('static.dashboard.dashboard') }}</li>
@endsection

@section('content')
<div class="row g-sm-4 g-3">
    <div class="col-xxl-4 col-xl-5">
        <div class="row g-sm-4 g-3">
            <div class="col-12">
                <a href="javascript:void(0)" class="widget-card card">
                    <div>
                        <h3>{{ Helpers::getDefaultCurrencySymbol() }}{{ (array_sum($data['revenues'] ?? [])) }}</h3>
                        <h5>{{ __('static.dashboard.total_revenue') }}</h5>
                    </div>
                    <div class="widget-icon">
                        <i data-feather="credit-card"></i>
                    </div>
                </a>
            </div>
            @unlessrole(['provider', 'serviceman'])
            @can('backend.provider.index')
            <div class="col-xxl-6 col-xl-12 col-sm-6 col-12">
                <a href="{{route('backend.provider.index')}}" class="widget-card card">
                    <div>
                        <h3>{{ Helpers::getProvidersCount() }}</h3>
                        <h5>{{ __('static.dashboard.total_providers') }}</h5>
                    </div>
                    <div class="widget-icon">
                        <i data-feather="user-plus"></i>
                    </div>
                </a>
            </div>
            @endcan
            @else
            @unlessrole('serviceman')
            @can('backend.serviceman.index')
            <div class="col-xxl-6 col-xl-12 col-sm-6 col-12">
                <a href="{{route('backend.serviceman.index')}}" class="widget-card card">
                    <div>
                        <h3>{{ Helpers::getServicemenCount() }}</h3>
                        <h5>{{ __('static.dashboard.total_servicemen') }}</h5>
                    </div>
                    <div class="widget-icon">
                        <i data-feather="user-plus"></i>
                    </div>
                </a>
            </div>
            @endcan
            @endunlessrole
            @endunlessrole
            @unlessrole('serviceman')
            @can('backend.service.index')
            <div class="col-sm-6">
                <a href="{{ route('backend.service.index') }}" class="widget-card card">
                    <div>
                        <h3>{{ Helpers::getServicesCount() }}</h3>
                        <h5>{{ __('static.dashboard.total_services') }}</h5>
                    </div>
                    <div class="widget-icon">
                        <i data-feather="settings"></i>
                    </div>
                </a>
            </div>
            @endcan
            @endunlessrole
            @can('backend.booking.index')
                <div class="col-sm-6">
                    <a href="{{ route('backend.booking.index') }}" class="widget-card card">
                        <div>
                            <h3>{{ Helpers::getBookingsCount() }}</h3>
                            <h5>{{ __('static.dashboard.total_bookings') }}</h5>
                        </div>
                        <div class="widget-icon">
                            <i data-feather="calendar"></i>
                        </div>
                    </a>
                </div>
            @endcan
            @unlessrole(['provider', 'serviceman'])
                @can('backend.customer.index')
                    <div class="col-sm-6">
                        <a href="{{ route('backend.customer.index') }}" class="widget-card card">
                            <div>
                                <h3>{{ Helpers::getCustomersCount() }}</h3>
                                <h5>{{ __('static.dashboard.total_customers') }}</h5>
                            </div>
                            <div class="widget-icon">
                                <i data-feather="users"></i>
                            </div>
                        </a>
                    </div>
                @endcan
            @else
            @can('backend.provider_wallet.index')
            <div class="col-sm-6">
                <a href="{{ route('backend.provider-wallet.index') }}" class="widget-card card">
                    <div>
                        <h3>{{ Helpers::getDefaultCurrencySymbol() }}{{ isset(auth()->user()->providerWallet) ? auth()->user()->providerWallet->balance : 0.0 }}</h3>
                        <h5>{{ __('static.dashboard.wallet_balance') }}</h5>
                    </div>
                    <div class="widget-icon">
                        <i data-feather="credit-card"></i>
                    </div>
                </a>
            </div>
            @endcan
            @if (Auth::user()->hasRole('serviceman'))
                <div class="col-sm-6">
                    <a href="{{ route('backend.serviceman-wallet.index') }}" class="widget-card card">
                        <div>
                            <h3>{{ Helpers::getDefaultCurrencySymbol() }}{{ isset(auth()->user()->servicemanWallet) ? auth()->user()->servicemanWallet->balance : 0.0 }}</h3>
                            <h5>{{ __('static.dashboard.wallet_balance') }}</h5>
                        </div>
                        <div class="widget-icon">
                            <i data-feather="credit-card"></i>
                        </div>
                    </a>
                </div>
            @endif
            @endunlessrole
        </div>
    </div>
    @can('backend.booking.index')
    <div class="col-xxl-8 col-xl-7">
        <div class="card">
            <div class="card-header">
                <h5>{{ __('static.booking.booking_status') }}</h5>
            </div>
            <div class="card-body">
                <div class="row g-sm-4 g-3 booking-status-main">
                    <div class="col-xxl-4 col-sm-6 booking-status-card">
                        <a href="{{ route('backend.booking.index', ['status' => BookingEnumSlug::PENDING]) }}" class="booking-widget-card card">
                            <div>
                                <h3>{{ Booking::countByStatus($bookings, BookingEnum::PENDING) }}</h3>
                                <h5>{{ __('static.booking.pending') }}</h5>
                            </div>
                            <div class="booking-widget-icon">
                                <i data-feather="box"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-xxl-4 col-sm-6 booking-status-card">
                        <a href="{{ route('backend.booking.index', ['status' => BookingEnumSlug::ON_GOING]) }}" class="booking-widget-card card">
                            <div>
                                <h3>{{ Booking::countByStatus($bookings, BookingEnum::ON_GOING) }}</h3>
                                <h5>{{ __('static.booking.on_going') }}</h5>
                            </div>
                            <div class="booking-widget-icon">
                                <i data-feather="calendar"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-xxl-4 col-sm-6 booking-status-card">
                        <a href="{{ route('backend.booking.index', ['status' => BookingEnumSlug::ON_THE_WAY]) }}" class="booking-widget-card card">
                            <div>
                                <h3>{{ Booking::countByStatus($bookings, BookingEnum::ON_THE_WAY) }}</h3>
                                <h5>{{ __('static.booking.on_the_way') }}</h5>
                            </div>
                            <div class="booking-widget-icon">
                                <i data-feather="package"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-xxl-4 col-sm-6 booking-status-card">
                        <a href="{{ route('backend.booking.index', ['status' => BookingEnumSlug::COMPLETED]) }}" class="booking-widget-card card">
                            <div>
                                <h3>{{ Booking::countByStatus($bookings, BookingEnum::COMPLETED) }}</h3>
                                <h5>{{ __('static.booking.completed') }}</h5>
                            </div>
                            <div class="booking-widget-icon">
                                <i data-feather="truck"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-xxl-4 col-sm-6 booking-status-card">
                        <a href="{{ route('backend.booking.index', ['status' => BookingEnumSlug::CANCEL]) }}" class="booking-widget-card card">
                            <div>
                                <h3>{{ Booking::countByStatus($bookings, BookingEnum::CANCEL) }}</h3>
                                <h5>{{ __('static.booking.cancel') }}</h5>
                            </div>
                            <div class="booking-widget-icon">
                                <i data-feather="x-circle"></i>
                            </div>
                        </a>
                    </div>
                    <div class="col-xxl-4 col-sm-6 booking-status-card">
                        <a href="{{ route('backend.booking.index', ['status' => BookingEnumSlug::ON_HOLD]) }}" class="booking-widget-card card">
                            <div>
                                <h3>{{ Booking::countByStatus($bookings, BookingEnum::ON_HOLD) }}</h3>
                                <h5>{{ __('static.booking.on_hold') }}</h5>
                            </div>
                            <div class="booking-widget-icon">
                                <i data-feather="alert-circle"></i>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endcan
    <div class="@if(Auth::user()->hasRole('serviceman')) col-xxl-6 @else col-xxl-7 @endif col-12">
        <div class="card h-100">
            <div class="card-header">
                <h5>{{ __('static.dashboard.average_revenue') }}</h5>
            </div>
            <div class="card-body">
                <div id="basic-apex"></div>
            </div>
        </div>
    </div>
    @unlessrole(['provider', 'serviceman'])
    @can('backend.provider.index')
    <div class="col-xxl-5 col-xl-6 col-12">
        <div class="card h-100 top-provider">
            <div class="card-header">
                <h5>{{__('static.dashboard.top_providers')}}</h5>
                <a href="{{ route('backend.provider.index') }}" class="view-all">
                    {{__('static.dashboard.view_all')}}
                    <i data-feather="arrow-right"></i>
                </a>
            </div>
            <div class="card-body pt-0">
                <div class="table-responsive provider-box custom-scrollbar @if(isset($fetchTopProviders) && count($fetchTopProviders) == 0) h-100 @endif">
                    <table class="table @if(isset($fetchTopProviders) && count($fetchTopProviders) == 0) h-100 @endif">
                        <tbody>
                            @forelse ($fetchTopProviders as $provider)
                            <tr>
                                <td>
                                    <div class="provider-detail">
                                        <img class="provider-img" src="{{ $provider?->media?->first()?->getUrl()  ?? asset('admin/images/avatar/1.png') }}">
                                        <div class="text-start">
                                            <h5>{{ $provider->name }}</h5>
                                            <div class="location">
                                                <i data-feather="map-pin"></i>
                                                <h6>{{ $provider->getPrimaryAddressAttribute()->state->name ?? null }}-{{ $provider->getPrimaryAddressAttribute()->country->name ?? null }}
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    @isset($provider->review_ratings)
                                    <div class="rate">
                                        @for ($i=0; $i< $provider->review_ratings; ++$i)
                                            <img src="{{ asset('admin/images/svg/star.svg') }}" alt="star" class="img-fluid star">
                                            @endfor
                                            <small>({{ number_format($provider->review_ratings, 1) }})</small>
                                    </div>
                                    @endisset
                                </td>
                            </tr>
                            @empty
                               <tr>
                               <td>
                                    <div class="table-no-data">
                                        <h4>{{__('static.data_not_found')}}</h4>
                                    </div>
                                </td>
                               </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    @endcan
    @else
    @unlessrole('serviceman')
    @can('backend.serviceman.index')
    <div class="col-xxl-5 col-xl-6 col-12">
        <div class="card h-100 top-provider">
            <div class="card-header">
                <h5>{{__('static.dashboard.top_servicemen')}}</h5>
                <a href="{{ route('backend.serviceman.index') }}" class="view-all">
                {{__('static.dashboard.view_all')}}
                    <i data-feather="arrow-right"></i>
                </a>
            </div>
            <div class="card-body pt-0">
                <div class="table-responsive provider-box custom-scrollbar">
                    <table class="table">
                        <tbody>
                            @forelse ($topServicemen as $servicemen)
                            <tr>
                                <td>
                                    <div class="provider-detail">
                                        <img class="provider-img" src="{{ $servicemen?->media?->first()?->getUrl() ?? asset('admin/images/avatar/1.png') }}">
                                        <div class="text-start"><h5>{{$servicemen->name}}</h5>
                                            <div class="location">
                                                <i data-feather="map-pin"></i>
                                                <h6>{{$servicemen->getPrimaryAddressAttribute()->state->name??null}}-{{$servicemen->getPrimaryAddressAttribute()->country->name??null }}
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    @isset($servicemen->review_ratings)
                                    <div class="rate">
                                        @for ($i=0; $i< $provider->review_ratings; ++$i)
                                            <img src="{{ asset('admin/images/svg/star.svg') }}" alt="star" class="img-fluid star">
                                        @endfor
                                        <small>({{ number_format($servicemen->review_ratings, 1) }})</small>
                                    </div>
                                    @endisset
                                </td>
                            </tr>
                            @empty
                                <tr>
                                    <td>
                                        <div class="table-no-data">
                                            <h4>{{__('static.data_not_found')}}</h4>
                                        </div>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    @endcan
    @endunlessrole
    @endunlessrole
    @can('backend.booking.index')
    <div class="col-xl-6 col-12">
        <div class="card h-100">
            <div class="card-header">
                <h5>{{__('static.dashboard.recent_booking')}}</h5>
                <a href="{{ route('backend.booking.index') }}" class="view-all">
                {{__('static.dashboard.view_all')}}
                    <i data-feather="arrow-right"></i>
                </a>
            </div>
            <div class="card-body pb-0">
                <div class="table-responsive booking-box custom-scrollbar">
                    <table class="table">
                        <tbody>
                            <thead>
                                <tr>
                                    <th>
                                    Booking
                                    </th>
                                    <th>
                                    Status
                                    </th>
                                    <th>
                                    View
                                    </th>
                                </tr>
                            </thead>
                            @forelse ($bookings->take(5) as $booking)
                            <tr>
                                <td>
                                    <div class="booking-data">
                                        <div>
                                            <a href="{{ route('backend.booking.showChild', $booking?->id) }}">
                                                <h5>{{__('static.booking.booking')}} <span>#{{ $booking?->booking_number }}</span> </h5>
                                            </a>
                                            <h6>{{ \Carbon\Carbon::parse($booking->created_at)->format('d-n-Y, h:iA') }} </h6>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <a href="{{route('backend.booking.index', ['status' => $booking->booking_status?->name])}}" class="badge booking-status-{{$booking->booking_status?->color_code}}">
                                        {{$booking->booking_status?->name}}
                                    </a>
                                </td>
                                <td>
                                    <a href="{{route('backend.booking.showChild', $booking->id)}}" class="show-icon">
                                        <i data-feather="eye"></i>
                                    </a>
                                </td>
                            </tr>
                            @empty
                               <tr>
                                   <td colspan="3">
                                    <div class="table-no-data">
                                        <h4>{{__('static.data_not_found')}}</h4>
                                    </div>
                                   </td>
                               </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    @endcan
    @unlessrole('serviceman')
    @can('backend.service.index')
    <div class="col-xl-6 col-12">
        <div class="card h-100 top-services">
            <div class="card-header">
                <h5>{{__('static.dashboard.top_services')}}</h5>
                <a href="{{ route('backend.service.index') }}" class="view-all">
                {{__('static.dashboard.view_all')}}
                    <i data-feather="arrow-right"></i>
                </a>
            </div>
            <div class="card-body pb-0">
                <div class="table-responsive service-box custom-scrollbar">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                {{__('static.name')}}
                                </th>
                                <th>
                                {{__('static.price')}}
                                </th>
                                <th>
                                {{__('static.bookings')}}
                                </th>
                                <th>
                                {{__('static.edit')}}
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($services as $service)
                            <tr>
                                <td>
                                    <div class="service-detail">
                                        <img class="service-img" src="{{ $service?->media?->first()?->getUrl() ?? asset('admin/images/service/1.png') }}">
                                        {{ $service->title }}
                                    </div>
                                </td>
                                <td>
                                    {{ Helpers::getDefaultCurrencySymbol() }}{{ $service->price }}
                                </td>
                                <td>
                                    {{ $service->bookings_count }}
                                </td>
                                <td>
                                    <a href="{{ route('backend.service.edit', $service?->id) }}" class="show-icon">
                                        <i data-feather="edit"></i>
                                    </a>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="4">
                                    <div class="table-no-data">
                                        <h4>{{__('static.data_not_found')}}</h4>
                                    </div>
                                </td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    @endcan
    @can('backend.review.index')
    <div class="col-xl-6 col-12">
        <div class="card h-100 latest-reviews">
            <div class="card-header">
                <h5>{{__('static.dashboard.latest_reviews')}}</h5>
                <a href="{{ route('backend.reviews') }}" class="view-all">
                {{__('static.dashboard.view_all')}}
                    <i data-feather="arrow-right"></i>
                </a>
            </div>
            <div class="card-body">
                <div class="table-responsive review-box custom-scrollbar">
                    <table class="table">
                        <tbody>
                            @forelse ($reviews as $review)
                            <tr>
                                <td>
                                    <div class="review-content">
                                        <div class="img-box">
                                            <img src="{{ $review?->service?->media?->first()?->getUrl() }}" class="img-fluid">
                                        </div>
                                        <span>

                                            {{ $review?->service?->title }}
                                        </span>
                                    </div>
                                </td>
                                <td>
                                    {{$review?->consumer?->name}}
                                </td>
                                <td class="review-rate">
                                    <div class="rate">
                                        @for ($i=0; $i< $review?->rating; ++$i)
                                        <img src="{{ asset('admin/images/svg/star.svg') }}" alt="star" class="img-fluid star">
                                        @endfor
                                        <small>({{ $review?->rating }})</small>
                                    </div>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td>
                                    <div class="table-no-data">
                                        <h4>{{__('static.data_not_found')}}</h4>
                                    </div>
                                </td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    @endcan
    @endunlessrole
    @unlessrole(['provider', 'serviceman'])
    @can('backend.blog.index')
    <div class="col-xxl-6 col-12">
        <div class="card h-100 latest-blogs">
            <div class="card-header">
                <h5>{{__('static.dashboard.latest_blog')}}</h5>
                <a href="{{ route('backend.blog.index') }}" class="view-all">
                {{__('static.dashboard.view_all')}}
                    <i data-feather="arrow-right"></i>
                </a>
            </div>
            <div class="card-body">
                <div class="row h-100">
                    @forelse ($blogs as $blog)
                    <div class="col-sm-6 h-100">
                        <div class="blog-box">
                            <a href="{{ route('backend.blog.edit',$blog?->id) }}" class="blog-img">
                                <img src="{{ $blog?->media?->first()?->getUrl()}}" class="img-fluid">
                            </a>
                            <div class="blog-content">
                                <a href="{{ route('backend.blog.edit',$blog?->id) }}">
                                    {{$blog?->title}}
                                </a>
                                <h6>{{ \Carbon\Carbon::parse($blog?->created_at)->format('d-n-Y, h:iA') }}</h6>
                            </div>
                        </div>
                    </div>
                    @empty
                       <div class="col-12">
                            <div class="table-no-data">
                                <h4>{{__('static.data_not_found')}}</h4>
                            </div>
                       </div>
                    @endforelse
                </div>
            </div>
        </div>
    </div>
    @endcan
    @endunlessrole
</div>
@endsection
@push('js')
<script src="{{ asset('admin/js/apex-chart.js') }}"></script>
<script>
    (function() {
        "use strict";

        var revenues = @json($data['revenues']) ?? [];
        var months = @json($data['months']) ?? [];        

        var formattedDates = months.map(function(month) {
            var parts = month.split(" ");
            var monthName = parts[0];
            var year = parts[1].replace("'", "20"); 

            var dateStr = new Date(`${monthName} 01, ${year}`);
            if (isNaN(dateStr)) {
                console.error("Invalid date:", monthName, year);
                return null; 
            }

            return dateStr.toISOString();
        }).filter(Boolean); 

        var series = {
            monthDataSeries1: {
                prices: revenues,
                dates: formattedDates,
            },
        };

        var options = {
            chart: {
                height: 350,
                type: "area",
                zoom: {
                    enabled: false,
                },
                toolbar: {
                    show: false,
                },
            },
            dataLabels: {
                enabled: false,
            },
            stroke: {
                curve: "straight",
            },
            series: [{
                name: "Revenue",
                data: revenues.length ? revenues : [0],
            }],
            labels: formattedDates.length ? formattedDates : ['No Data'],
            xaxis: {
                type: "datetime",
                labels: {
                    format: 'yyyy-MM-dd',
                },
            },
            yaxis: {
                opposite: true,
            },
            legend: {
                horizontalAlign: "left",
            },
            colors: ['#5465FF'],
        };

        var chart = new ApexCharts(document.querySelector("#basic-apex"), options);
        chart.render();
    })();
</script>

@endpush
