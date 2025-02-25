@extends('backend.layouts.master')
@section('title', __('static.wallet.wallet'))
@section('content')
@use('app\Helpers\Helpers')
<form action="{{ route('backend.wallet.creditOrdebit') }}" method="POST" id="consumerWalletForm">
    @csrf
    <div class="row g-4 wallet-main mb-4">
        @can('backend.wallet.credit')
        <div class="col-xxl-4 col-xl-5">
            <div class="wallet-detail card">
                <div class="wallet-header">
                    <h4>{{ __('static.wallet.select_consumer') }}</h4>
                </div>
                <div class="form-group row">
                    <label class="col-md-2" for="user_id">{{ __('static.wallet.select_consumer') }}<span> *</span></label>
                    <div class="col-md-10 error-div select-dropdown">
                        <select class="select-2 form-control Dropdown" name="user_id" id="userDropdown" data-placeholder="{{ __('static.wallet.select_consumer') }}" required>
                            <option value=""></option>
                            @foreach ($users as $key => $option)
                                <option class="option" value="{{ $key }}" @if (isset(request()->user_id)) @if ($key == request()->user_id) selected @endif @endif>{{ $option }}</option>
                            @endforeach
                        </select>
                        @error('user_id')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
            </div>
        </div>
        @endcan
        <div class="col-xxl-8 col-xl-7 @cannot('backend.wallet.credit') full-width @endcannot">
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
                                    @if (Auth::user()->can('backend.wallet.credit'))
                                        <input class="form-control" type="text" id="consumer-wallet-balance"
                                            name="name"
                                            value="{{ Helpers::getSettings()['general']['default_currency']->symbol }} {{ $balance ?? 0.0 }}"
                                            readonly='true'>
                                    @else
                                        <input class="form-control" type="text" id="consumer-wallet-balance"
                                            name="name"
                                            value="{{ Helpers::getSettings()['general']['default_currency']->symbol }} {{ Auth::user()->wallet?->balance ?? 0.0 }}"
                                            readonly='true'>
                                    @endif
                                </div>
                            </div>
                            <h5 class="lh-1">{{ __('static.wallet.balance') }}</h5>
                        </div>
                    </div>
                    @canAny(['backend.wallet.credit', 'backend.wallet.debit'])
                    <div class="wallet-form">
                            <input class="consumerId" type="hidden" name="consumer_id" value="{{ request()->user_id }}">
                            <input name="type" type="hidden">
                            <div class="form-group row amount g-xxl-4 g-0">
                                <div class="col-md-10 error-div">
                                    <div class="input-group mb-3 flex-nowrap">
                                        <span class="input-group-text">{{ Helpers::getSettings()['general']['default_currency']->symbol }}</span>
                                        <div class="w-100">
                                            <input class="form-control balance"
                                                placeholder="{{ __('static.wallet.add_amount') }}" type="number"
                                                name="balance" value="{{ old('balance') }}" min="1" required>
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
                                @can('backend.wallet.credit')
                                <button type="submit" class="credit btn btn-success" value="credit">
                                    {{ __('static.wallet.credit') }}
                                    <i data-feather="arrow-down-circle"></i>
                                </button>
                                @endcan
                                @can('backend.wallet.debit')
                                <button type="submit" class="debit btn btn-danger" value="debit">
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
<div class="card">
    <div class="card-header d-flex align-items-center">
        <h5>{{ __('Transactions') }}</h5>
    </div>
    <div class="card-body common-table">
        <div class="consumer-transaction-table">
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
            $("#consumerWalletForm").validate();
            $('#userDropdown').change(function() {
                var consumerId = $(this).val();
                let url = "{{ route('backend.get-user-transactions', '') }}" + "/" + consumerId;
                window.history.pushState({}, '', '?user_id=' + consumerId);
                $('#userDropdown').val(consumerId);
                location.reload();
            });

            @can('backend.wallet.credit')
                $(".credit").click(function() {
                    $('input[name="type"]').val('credit');
                });

                $(".debit").click(function() {
                    $('input[name="type"]').val('debit');
                });
            @endcan
        });

    })(jQuery);
</script>

@endpush
