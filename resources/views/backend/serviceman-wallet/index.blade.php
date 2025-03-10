@extends('backend.layouts.master')
@section('title', __('static.wallet.wallet'))
@section('content')
@use('app\Helpers\Helpers')
@use('app\Enums\RoleEnum')
<div class="row g-4 wallet-main mb-4">
    <form action="{{ route('backend.serviceman-wallet.creditOrdebit') }}" method="POST" id="servicemanWalletForm">
        @csrf
        <div class="row g-4 wallet-main mb-4">
            @can('backend.serviceman_wallet.credit')
                <div class="col-xxl-4 col-xl-5">
                    <div class="wallet-detail card">
                        <div class="wallet-header">
                            <h4>{{ __('static.wallet.select_serviceman') }}</h4>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-2" for="serviceman_id">{{ __('static.wallet.select_serviceman') }}<span> *</span></label>
                            <div class="col-md-10 error-div select-dropdown">
                                <select class="select-2 form-control Dropdown" name="serviceman_id" id="servicemanDropdown"
                                    data-placeholder="{{ __('static.wallet.select_serviceman') }}" required>
                                    <option class="select-placeholder" value=""></option>
                                    @foreach ($servicemen as $key => $option)
                                        <option class="option" value="{{ $key }}"
                                            @if (isset(request()->serviceman_id)) @if ($key == request()->serviceman_id) selected @endif
                                            @endif>
                                            {{ $option }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('serviceman_id')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>
            @endcan
            <div class="col-xxl-8 col-xl-7 @cannot('backend.serviceman_wallet.credit') full-width @endcannot">
                <div class="wallet-detail card">
                    <div class="wallet-header">
                        <h4>{{ __('static.wallet.wallet') }}</h4>
                    </div>
                    <div class="wallet-detail-content">
                        <div class="wallet-amount">
                            <div class="wallet-icon">
                                <i data-feather="credit-card"></i>
                            </div>
                            <div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="name">{{ __('static.wallet.balance') }}</label>
                                    <div class="col-md-10">
                                        @php
                                            $user = Auth::user();
                                            $roleName = $user->roles->pluck('name')?->first();
                                        @endphp
                                        @if ($roleName == RoleEnum::ADMIN || $user->can('backend.serviceman_wallet.credit'))
                                        <input class="form-control" type="text" id="serviceman-wallet-balance" name="name" value="{{ Helpers::getSettings()['general']['default_currency']->symbol }} {{ $balance ?? 0.0 }}" readonly='true'>
                                        @elseif ($roleName == RoleEnum::SERVICEMAN)
                                        <input class="form-control" type="text" id="serviceman-wallet-balance" name="name" value="{{ Helpers::getSettings()['general']['default_currency']->symbol }} {{ Auth::user()->servicemanWallet->balance ?? 0.0 }}" readonly='true'>
                                        @endif
                                    </div>
                                </div>
                                <h5 class="lh-1">{{ __('static.wallet.balance') }}</h5>
                            </div>
                        </div>
                        @canAny(['backend.serviceman_wallet.credit','backend.serviceman_wallet.debit'])
                            <div class="wallet-form">
                                <input type="hidden" class="consumerId" name="serviceman_id" value="{{ request()->serviceman_id }}">
                                <input type="hidden" name="type">
                                <div class="form-group row amount g-xxl-4 g-0">
                                    <div class="col-md-10 error-div">
                                        <div class="input-group mb-3 flex-nowrap">
                                            <span class="input-group-text">{{ \App\Helpers\Helpers::getSettings()['general']['default_currency']->symbol }}</span>
                                            <div class="w-100">
                                                <input class="form-control balance" placeholder="{{ __('static.wallet.add_amount') }}" type="number" name="balance" value="{{ old('balance') }}" min="1" required>
                                                @error('balance')
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    @can('backend.serviceman_wallet.credit')
                                    <button type="submit" class="credit btn btn-success">
                                        {{ __('static.wallet.credit') }}
                                        <i data-feather="arrow-down-circle"></i>
                                    </button>
                                    @endcan
                                    @can('backend.serviceman_wallet.debit')
                                    <button type="submit" class="debit btn btn-danger">
                                        {{ __('static.wallet.debit') }}
                                        <i data-feather="arrow-up-circle"></i>
                                    </button>
                                    @endcan
                                </div>
                            </div>
                        @endcanAny
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<div class="card">
    <div class="card-header d-flex align-items-center">
        <h5>{{ __('Transactions') }}</h5>
    </div>
    <div class="card-body common-table">
        <div class="serviceman-transaction-table">
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
    $(document).ready(function() {
        "use strict";

        // Initialize form validation
        $("#servicemanWalletForm").validate();

        // Handle serviceman dropdown change
        $('#servicemanDropdown').change(function() {
            var servicemanId = $(this).val();
            var url = "{{ route('backend.get-serviceman-transactions', '') }}" + "/" + servicemanId;

            // Update browser history and reload page with new query parameter
            window.history.pushState(null, null, '?serviceman_id=' + servicemanId);
            location.reload();
        });

        // Handle credit and debit buttons if user has permission
        @can('backend.serviceman_wallet.credit')
            $(".credit").click(function() {
                $('input[name="type"]').val('credit');
            });
        @endcan

        @can('backend.serviceman_wallet.debit')
            $(".debit").click(function() {
                $('input[name="type"]').val('debit');
            });
        @endcan
    });
</script>
@endpush
