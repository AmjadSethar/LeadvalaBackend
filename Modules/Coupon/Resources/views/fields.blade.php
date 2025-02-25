@push('style')
<link rel="stylesheet" type="text/css" href="{{ asset('admin/css/vendors/flatpickr.min.css') }}">
@endpush
@use('app\Helpers\Helpers')
<ul class="nav nav-tabs" id="couponTab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active show" id="general-tab" data-bs-toggle="tab" href="#general" role="tab"
            aria-controls="general" aria-selected="true" data-original-title="" title="" data-tab="0">
            <i data-feather="settings"></i> {{ __('static.coupon.general') }}
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="restriction-tab" data-bs-toggle="tab" href="#restriction" role="tab"
            aria-controls="restriction" aria-selected="true" data-original-title="" title="" data-tab="1">
            <i data-feather="alert-octagon"></i>{{ __('static.coupon.restriction') }}
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="usage-tab" data-bs-toggle="tab" href="#usage" role="tab" aria-controls="usage"
            aria-selected="true" data-original-title="" title="">
            <i data-feather="pie-chart"></i></i>{{ __('static.coupon.usage') }}
        </a>
    </li>
</ul>
<div class="tab-content" id="couponTabContent">
    {{-- -------------------------------------------------------------- General Settings ------------------------------------------- --}}
    <div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
        <div class="form-group row">
            <label class="col-md-2" for="code">{{ __('static.coupon.code') }}<span> *</span></label>
            <div class="col-md-10">
                <input class='form-control' type="text" id="code" name="code" class="code" value="{{ isset($coupon->code) ? $coupon->code : old('code') }}" placeholder="{{ __('static.coupon.enter_coupon') }}">
                @error('code')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-2" for="type">{{ __('static.coupon.type') }}<span> *</span></label>
            <div class="col-md-10 error-div select-dropdown">
                <select class="select-2 form-control" id="type" name="type" data-placeholder="{{ __('static.coupon.select_type') }}">
                    <option class="select-placeholder" value=""></option>
                    @foreach (['fixed' => 'Fixed', 'percentage' => 'Percentage'] as $key => $option)
                        <option class="option" value="{{ $key }}" @if (old('type', $coupon->type ?? '') == $key) selected @endif>{{ $option }}</option>
                    @endforeach
                </select>
                @error('type')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group row fixed">
            <label class="col-md-2" for="amount">{{ __('static.coupon.price') }}<span> *</span></label>
            <div class="col-md-10 error-div price">
                <div class="input-group mb-3 flex-nowrap">
                    <span class="input-group-text">{{Helpers::getSettings()['general']['default_currency']->symbol}}</span>
                    <div class="w-100">
                        <input class="form-control" type="number" id="amount" name="amount" min="1" value="{{ isset($coupon->amount) ? $coupon->amount : old('amount') }}" placeholder="{{ __('static.coupon.enter_price') }}">
                        @error('amount')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group row percentage">
            <label class="col-md-2" for="percentage">{{ __('static.coupon.percentage') }}<span> *</span></label>
            <div class="col-md-10 price">
                <div class="input-group mb-3 flex-nowrap">
                    <div class="w-100">
                        <input class="form-control" type="number" id="percentage_amount" name="percentage_amount" min="1"  value="{{ isset($coupon->amount) ? $coupon->amount : old('amount') }}"  placeholder="{{ __('static.coupon.enter_percentage') }}" oninput="if (value > 100) value = 100; if (value < 0) value = 0;">
                            @error('percentage_amount')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    <span class="input-group-text">%</span>
                </div>
            </div>
        </div>
        {{-- <input class="amount-type" type="hidden" name="amount"> --}}
        <div class="form-group row">
            <label class="col-md-2" for="role">{{ __('static.coupon.expiration_status') }}</label>
            <div class="col-md-10">
                <div class="editor-space">
                    <label class="switch">
                        @if (isset($coupon))
                            <input class="form-control" type="hidden" name="is_expired" value="0">
                            <input class="form-check-input" id="is_expired" type="checkbox" name="is_expired" id="" value="1" {{ $coupon->is_expired ? 'checked' : '' }}>
                        @else
                            <input class="form-control" type="hidden" name="is_expired" value="0">
                            <input class="form-check-input" id="is_expired" type="checkbox" name="is_expired" id="" value="1">
                        @endif
                        <span class="switch-state"></span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group row flatpicker-calender select-date" style="display: none">
            <label class="col-md-2" for="start_end_date">{{ __('Select Date') }}<span> *</span> </label>
            <div class="col-md-10">
                @if(isset($coupon))
                    <input class="form-control" id="date-range" value="{{ \Carbon\Carbon::parse(@$coupon->start_date)->format('d/m/Y') }} to {{ \Carbon\Carbon::parse(@$coupon->end_date)->format('d/m/Y') }}" name="start_end_date" placeholder="Select Date.." >
                @else
                    <input class="form-control" id="date-range" name="start_end_date" placeholder="Select Date.." >
                @endif
                @error('start_end_date')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-2" for="role">{{ __('static.coupon.is_first_order') }}</label>
            <div class="col-md-10">
                <div class="editor-space">
                    <label class="switch">
                        @if (isset($coupon))
                            <input class="form-control" type="hidden" name="is_first_order" value="0">
                            <input class="form-check-input" type="checkbox" name="is_first_order" id=""
                                value="1" {{ $coupon->is_first_order ? 'checked' : '' }}>
                        @else
                            <input class="form-control" type="hidden" name="is_first_order" value="0">
                            <input class="form-check-input" type="checkbox" name="is_first_order" id=""
                                value="1" checked>
                        @endif
                        <span class="switch-state"></span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-2" for="role">{{ __('static.status') }}</label>
            <div class="col-md-10">
                <div class="editor-space">
                    <label class="switch">
                        @if (isset($coupon))
                            <input class="form-control" type="hidden" name="status" value="0">
                            <input class="form-check-input" type="checkbox" name="status" id=""
                                value="1" {{ $coupon->status ? 'checked' : '' }}>
                        @else
                            <input class="form-control" type="hidden" name="status" value="0">
                            <input class="form-check-input" type="checkbox" name="status" id=""
                                value="1" checked>
                        @endif
                        <span class="switch-state"></span>
                    </label>
                </div>
            </div>
        </div>
        <div class="footer">
            <button type="button" class="nextBtn btn btn-primary">{{ __('static.next') }}</button>
        </div>
    </div>
    {{-- -------------------------------------------------------------- Restriction Settings ------------------------------------------- --}}
    <div class="tab-pane fade" id="restriction" role="tabpanel" aria-labelledby="restriction-tab">
        <div class="form-group row">
            <label class="col-md-2" for="role">{{ __('static.coupon.is_apply_all') }}</label>
            <div class="col-md-10">
                <div class="editor-space">
                    <label class="switch">
                        @if (isset($coupon))
                            <input class="form-control" type="hidden" name="is_apply_all" value="0">
                            <input class="form-check-input" id="is_apply_all" type="checkbox" name="is_apply_all"
                                id="" value="1" {{ $coupon->is_apply_all ? 'checked' : '' }}>
                        @else
                            <input class="form-control" type="hidden" name="is_apply_all" value="0">
                            <input class="form-check-input" id="is_apply_all" type="checkbox" name="is_apply_all"
                                id="" value="1">
                        @endif
                        <span class="switch-state"></span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group row include_services">
            <label class="col-md-2" for="services">{{ __('static.coupon.include_services') }}<span> *</span></label>
            <div class="col-md-10 error-div select-dropdown">
                <select id="services[]" class="select-2 form-control" search="true" data-placeholder="{{ __('static.coupon.select_services') }}" name="services[]" multiple="multiple">
                    <option></option>
                    @foreach ($services as $key => $value)
                        <option value="{{ $key }}" @isset($coupon->services) @if (in_array($key, $default_services)) selected @endif @endisset>
                            {{ $value }}
                        </option>
                    @endforeach
                </select>
                @error('services')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group row exclude_services">
            <label class="col-md-2" for="services">{{ __('static.coupon.exclude_services') }} </label>
            <div class="col-md-10 error-div select-dropdown">
                <select id="exclude_services[]" class="select-2 form-control" search="true" data-placeholder="{{ __('static.coupon.select_services') }}" name="exclude_services[]" multiple="multiple">
                    <option></option>
                    @foreach ($services as $key => $value)
                        <option value="{{ $key }}" @isset($coupon->exclude_services) @if (in_array($key, $exclude_services)) selected @endif @endisset>
                            {{ $value }}</option>
                    @endforeach
                </select>
                @error('exclude_services')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-2" for="min_spend">{{ __('static.coupon.minimum_spend') }}<span> *</span></label>
            <div class="col-md-10 error-div">
                <div class="input-group mb-3 flex-nowrap">
                    <span class="input-group-text">{{Helpers::getSettings()['general']['default_currency']->symbol}}</span>
                    <div class="w-100">
                        <input class="form-control" type="number" name="min_spend" min="1" value="{{ isset($coupon->min_spend) ? $coupon->min_spend : old('min_spend') }}"  placeholder="{{ __('static.coupon.enter_minimum_spend') }}">
                        @error('min_spend')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <button type="button" class="previousBtn btn cancel">{{ __('static.previous') }}</button>
            <button type="button" class="nextBtn btn btn-primary">{{ __('static.next') }}</button>
        </div>
    </div>
    {{-- -------------------------------------------------------------- Usage Settings ------------------------------------------- --}}
    <div class="tab-pane fade" id="usage" role="tabpanel" aria-labelledby="usage-tab">
        <div class="form-group row">
            <label class="col-md-2" for="role">{{ __('static.coupon.is_unlimited') }}</label>
            <div class="col-md-10">
                <div class="editor-space">
                    <label class="switch">
                        @if (isset($coupon))
                            <input class="form-control" type="hidden" name="is_unlimited" value="0">
                            <input class="form-check-input" id="is_unlimited" type="checkbox" name="is_unlimited"
                                id="" value="1" {{ $coupon->is_unlimited ? 'checked' : '' }}>
                        @else
                            <input class="form-control" type="hidden" name="is_unlimited" value="0">
                            <input class="form-check-input" id="is_unlimited" type="checkbox" name="is_unlimited"
                                id="" value="1">
                        @endif
                        <span class="switch-state"></span>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group row" id="usage_per_coupon">
            <label class="col-md-2" for="usage_per_coupon">{{ __('static.coupon.usage_per_coupon') }}</label>
            <div class="col-md-10">
                <input class='form-control' type="number" name="usage_per_coupon" value="{{ isset($coupon->usage_per_coupon) ? $coupon->usage_per_coupon : old('usage_per_coupon') }}" placeholder="{{ __('static.coupon.enter_value') }}">
                @error('usage_per_coupon')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group row" id="usage_per_customer">
            <label class="col-md-2" for="usage_per_customer">{{ __('static.coupon.usage_per_customer') }}</label>
            <div class="col-md-10">
                <input class='form-control' type="number" name="usage_per_customer" value="{{ isset($coupon->usage_per_customer) ? $coupon->usage_per_customer : old('usage_per_customer') }}" placeholder="{{ __('static.coupon.enter_value') }}">
                @error('usage_per_customer')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="footer">
            <button type="button" class="previousBtn btn cancel">{{ __('static.previous') }}</button>
            <button class="btn btn-primary submitBtn" type="submit">{{ __('static.submit') }}</button>
        </div>
    </div>
</div>
@push('js')
<script src="{{ asset('admin/js/flatpickr.js') }}"></script>
<script src="{{ asset('admin/js/custom-flatpickr.js') }}"></script>
<script>
(function($) {
    "use strict";
    $(document).ready(function() {
        $("#couponForm").validate({
            ignore: [],
            rules: {
                "code": "required",
                "type": "required",
                "amount": {
                    required: setAmountRule
                },
                "percentage_amount": {
                    required: setPercentageRule
                },
                "start_end_date": {
                    required: isExpire
                },
                "services[]":{
                    required: isApply
                },
                "min_spend": "required",
            }
        });

        function isExpire(element) {
            return $("#is_expired").prop("checked") ? true : false;
        }

        function isApply(element) {
            return $("#is_apply_all").prop("checked") ? false : true;
        };

        var initialProviderID = $('select[name="provider_id"]').val();
        @isset($service)
            var selectedServices = {!! json_encode($service->related_services->pluck('id')->toArray() ?? []) !!};
            loadServices(initialProviderID, selectedServices);
        @endisset

        $('select[name="provider_id"]').on('change', function() {
            var providerID = $(this).val();
            loadServices(providerID);
        });

        // Coupon Is Expired Toggle
        function toggleDateSelection() {
            if ($("#is_expired").is(":checked")) {
                $('.select-date').show();
            } else {
                $('.select-date').hide();
            }
        }
        toggleDateSelection();
        $('#is_expired').on('change', function() {
            toggleDateSelection();
        });

        //Hide Show PriceInput field
        function toggleInput(type) {
            if (type === 'fixed' || type === '') {
                console.log("fixes");
                $('.fixed').show();
                $('.percentage').hide();
                $('.percentage').addClass('d-none');
                $('.percentage').removeClass('d-flex');

            } else {
                $('.fixed').hide();
                $('.percentage').show();
                $('.percentage').removeClass('d-none');
                $('.percentage').addClass('d-flex');
            }
        }

        toggleInput($('#type').val());
        $('#type').on('change', function() {
            var type = $(this).val();
            toggleInput(type);
        });

        // Is Apply All Coupon Toggle
        function toggleServiceSelection() {
            if ($("#is_apply_all").prop("checked")) {
                $('.exclude_services').show();
                $('.include_services').hide();
            } else {
                $('.exclude_services').hide();
                $('.include_services').show();
            }
        }
        toggleServiceSelection();
        $('#is_apply_all').on('change', function() {
            toggleServiceSelection();
        });

        // Coupon Is Unlimited Toggle
        if ($("#is_unlimited").prop("checked")) {
            $('#usage_per_coupon').hide();
            $('#usage_per_customer').hide();
        } else {
            $('#usage_per_coupon').show();
            $('#usage_per_customer').show();
        }

        $(document).on('change', '#is_unlimited', function(e) {
            if ($(this).is(':checked')) {
                $('#usage_per_coupon').hide();
                $('#usage_per_customer').hide();
            } else {
                $('#usage_per_coupon').show();
                $('#usage_per_customer').show();

            }
        });
    });

    function setAmountRule() {
        return $('#type').val() === 'fixed';
    }

    function setPercentageRule() {
        return $('#type').val() === 'percentage';
    }
})(jQuery);
</script>
@endpush
