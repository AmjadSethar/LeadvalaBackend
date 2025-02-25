@extends('backend.layouts.master')

@section('title', __('static.settings.settings'))

@section('content')
@use('App\Models\Settings')
@use('app\Helpers\Helpers')
<div class="card tab2-card">
    <div class="card-header">
        <h5>{{ __('static.settings.settings')}}</h5>
    </div>
    <div class="card-body">
        <div class="vertical-tabs">
            <div class="row g-xl-4 g-3">
                <div class="col-xxl-3 col-xl-4 col-12">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-tabContent" data-bs-toggle="pill" data-bs-target="#general_settings" type="button" role="tab" aria-controls="App_Settings" aria-selected="true">
                            <i data-feather="settings"></i>{{ __('static.settings.general') }}
                        </a>
                        <a class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#Ads_Setting" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                            <i data-feather="disc"></i>{{ __('static.settings.activation') }}
                        </a>
                        <a class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#Email_Setting" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                            <i data-feather="mail"></i>{{ __('static.settings.email_configuration') }}
                        </a>
                        <a class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#App_Update_Popup" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i data-feather="user"></i>{{ __('static.settings.provider_commissions') }}
                        </a>
                        <a class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#Google_Recaptcha" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i data-feather="chrome"></i>{{ __('static.settings.google_recaptcha') }}
                        </a>
                        <a class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#default_creation_limits" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i data-feather="alert-circle"></i>{{ __('static.settings.default_creation_limits') }}
                        </a>
                        @if (@$settings['activation']['subscription_enable'])
                        <a class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#subscription_plans" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i data-feather="credit-card"></i>{{ __('static.settings.free_trial') }}
                        </a>
                        @endif
                        <a class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#firebase" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i data-feather="code"></i>{{ __('static.settings.firebase') }}
                        </a>
                    </div>
                </div>
                <div class="col-xxl-7 col-xl-8 col-12">
                    <form method="POST" class="needs-validation user-add" id="settingsForm" action="{{ route('backend.update.settings',$settingsId) }}" enctype="multipart/form-data">@csrf @method('PUT')
                        <div class="tab-content w-100" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="general_settings" role="tabpanel" aria-labelledby="app_settings" tabindex="0">
                                <div>
                                    <div class="form-group row">
                                        <label for="image" class="col-md-2">{{ __('static.settings.light_logo') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="file" id="general[light_logo]" accept=".jpg, .png, .jpeg" name="general[light_logo]">
                                            @error('general[light_logo]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            <span class="help-text">{{ __('static.settings.upload_logo_image_size') }}</span>
                                        </div>
                                    </div>
                                    @isset($settings['general']['light_logo'])
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-10">
                                                    <div class="image-list">
                                                        <div class="image-list-detail">
                                                            <div class="position-relative">
                                                                <img src="{{ $settings['general']['light_logo'] }}" id="{{ $settings['general']['light_logo'] }}" alt="Light Logo" class="image-list-item">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endisset
                                    <div class="form-group row">
                                        <label for="image" class="col-md-2">{{ __('static.settings.dark_logo') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="file" id="general[dark_logo]" accept=".jpg, .png, .jpeg" name="general[dark_logo]">
                                            @error('general[dark_logo]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            <span class="help-text">{{ __('static.settings.upload_logo_image_size') }}</span>
                                        </div>
                                    </div>
                                    @isset($settings['general']['dark_logo'])
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-10">
                                                    <div class="image-list">
                                                        <div class="image-list-detail">
                                                            <div class="position-relative">
                                                                <img src="{{ $settings['general']['dark_logo'] }}" id="{{ $settings['general']['dark_logo'] }}" alt="Dark Logo" class="image-list-item">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endisset
                                    <div class="form-group row">
                                        <label for="image" class="col-md-2">{{ __('static.settings.favicon') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="file" id="general[favicon]" accept=".jpg, .png, .jpeg" name="general[favicon]">
                                            @error('general[favicon]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            <span class="help-text">{{ __('static.settings.upload_favicon_image_size') }}</span>
                                        </div>
                                    </div>
                                    @isset($settings['general']['favicon'])
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2"></div>
                                                <div class="col-md-10">
                                                    <div class="image-list">
                                                        <div class="image-list-detail">
                                                            <div class="position-relative">
                                                                <img src="{{ $settings['general']['favicon'] }}" id="{{ $settings['general']['favicon'] }}" alt="favicon" class="image-list-item">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endisset
                                    <div class="form-group row">
                                        <label class="col-md-2" for="site_name">{{ __('static.settings.site_name') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="text" id="general[site_name]" name="general[site_name]" value="{{ $settings['general']['site_name'] ?? old('site_name') }}" placeholder="{{ __('static.settings.enter_site_name') }}">
                                            @error('general[site_name]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="country" class="col-md-2">{{ __('static.timezone') }}</label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control select-country" id="general[default_timezone]" name="general[default_timezone]" data-placeholder="{{ __('static.settings.select_timezone') }}">
                                                <option class="select-placeholder" value=""></option>
                                                @forelse ($timeZones as $key => $option)
                                                    <option class="option" value={{ $key }} @if ($settings['general']['default_timezone'] ?? old('default_timezone')) @if ($key==$settings['general']['default_timezone']) selected @endif @endif>{{ $option }}</option>
                                                @empty
                                                    <option value="" disabled></option>
                                                @endforelse
                                            </select>
                                            @error('general[default_timezone]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="general[default_language_id]" class="col-md-2">{{ __('static.settings.default_language_id') }}</label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control select-country" id="general[default_language_id]" name="general[default_language_id]" data-placeholder="{{ __('static.settings.select_timezone') }}">
                                                <option class="select-placeholder" value=""></option>
                                                @forelse ($systemlangs as $key => $option)
                                                    <option class="option" value={{ $key }} @if ($settings['general']['default_language_id'] ?? old('default_language_id')) @if ($key==$settings['general']['default_language_id']) selected @endif @endif>{{ $option }}</option>
                                                @empty
                                                    <option value="" disabled></option>
                                                @endforelse
                                            </select>
                                            @error('general[default_language_id]')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="country" class="col-md-2">{{ __('static.settings.currency') }}</label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control select-country" id="general[default_currency_id]" name="general[default_currency_id]" data-placeholder="{{ __('static.settings.select_currency') }}">
                                                    <option class="select-placeholder" value=""></option>
                                                @forelse ($currencies as $key => $option)
                                                    <option class="option" value={{ $key }} @if ($settings['general']['default_currency_id'] ?? old('default_currency_id')) @if ($key==$settings['general']['default_currency_id']) selected @endif @endif>{{ $option }}</option>
                                                @empty
                                                    <option value="" disabled></option>
                                                @endforelse
                                            </select>
                                            @error('general[default_currency_id]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="general[min_booking_amount]">{{ __('static.settings.min_booking_amount') }}</label>
                                        <div class="col-md-10 error-div">
                                            <div class="input-group mb-3 flex-nowrap">
                                                <span class="input-group-text">{{Helpers::getSettings()['general']['default_currency']->symbol}}</span>
                                                <div class="w-100">
                                                    <input class='form-control' type="number" id="general[min_booking_amount]" name="general[min_booking_amount]" min="1" value="{{ isset($settings['general']['min_booking_amount']) ? $settings['general']['min_booking_amount'] : old('general[min_booking_amount]') }}" placeholder="{{ __('static.settings.enter_min_booking_amount') }}">
                                                    @error('general[min_booking_amount]')
                                                        <span class="invalid-feedback d-block" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                    <span class="help-text">{{ __('static.settings.minimum_required_booking_amount') }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="general[platform_fees]">{{ __('static.settings.platform_fees') }}</label>
                                        <div class="col-md-10 error-div">
                                            <div class="input-group mb-3 flex-nowrap">
                                                <span class="input-group-text">{{Helpers::getSettings()['general']['default_currency']->symbol}}</span>
                                                <div class="w-100">
                                                    <input class='form-control' type="number" id="general[platform_fees]" name="general[platform_fees]" min="1" value="{{ isset($settings['general']['platform_fees']) ? $settings['general']['platform_fees'] : old('general[platform_fees]') }}" placeholder="{{ __('static.settings.enter_platform_fees') }}">
                                                    @error('general[platform_fees]')
                                                        <span class="invalid-feedback d-block" role="alert">
                                                            <strong>{{ $message }}</strong>
                                                        </span>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="general[platform_fees_type]" class="col-md-2">{{ __('static.settings.platform_fees_type') }}</label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control" id="general[platform_fees_type]" name="general[platform_fees_type]" data-placeholder="{{ __('static.settings.select_platform_fees_type') }}">
                                                <option class="select-placeholder" value=""></option>
                                                    @forelse (['fixed' => 'Fixed', 'per_service' => 'Per Service'] as $key => $option)
                                                        <option class="option" value={{ $key }} @if ($settings['general']['platform_fees_type'] ?? old('platform_fees_type')) @if ($key==$settings['general']['platform_fees_type']) selected @endif @endif>{{ $option }}</option>
                                                    @empty
                                                        <option value="" disabled></option>
                                                    @endforelse
                                            </select>
                                            @error('general[platform_fees_type]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="country" class="col-md-2">{{ __('static.settings.mode') }}</label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control select-country" id="mode" name="general[mode]" data-placeholder="{{ __('static.settings.select_mode') }}">
                                                <option class="select-placeholder" value=""></option>
                                                @forelse (['dark' => 'Dark', 'light' => 'Light'] as $key => $option)
                                                <option class="option" value={{ $key }} @if ($settings['general']['mode'] ?? old('mode')) @if ($key==$settings['general']['mode']) selected @endif @endif>{{ $option }}</option>
                                                @empty
                                                <option value="" disabled></option>
                                                @endforelse
                                            </select>
                                            @error('mode')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="copyright_text">{{ __('static.settings.copyright_text') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="text" id="general[copyright]" name="general[copyright]" value="{{ $settings['general']['copyright'] ?? old('copyright') }}" placeholder="{{ __('static.settings.enter_copyright_text') }}">
                                            @error('general[copyright]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Ads_Setting" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="1">
                                <div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[service_auto_approve]">{{ __('static.settings.service_auto_approve') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['service_auto_approve']))
                                                    <input class="form-control" type="hidden" name="activation[service_auto_approve]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[service_auto_approve]" value="1" {{ $settings['activation']['service_auto_approve'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[service_auto_approve]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[service_auto_approve]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.service_auto_approve_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[platform_fees_status]">{{ __('static.settings.platform_fees_status') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['platform_fees_status']))
                                                    <input class="form-control" type="hidden" name="activation[platform_fees_status]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[platform_fees_status]" value="1" {{ $settings['activation']['platform_fees_status'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[platform_fees_status]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[platform_fees_status]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.platform_fees_status_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[subscription_enable]">{{ __('static.settings.subscription_enable') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['subscription_enable']))
                                                    <input class="form-control" type="hidden" name="activation[subscription_enable]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[subscription_enable]" value="1" {{ $settings['activation']['wallet_enable'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[subscription_enable]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[subscription_enable]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.subscription_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[wallet_enable]">{{ __('static.settings.wallet_enable') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['wallet_enable']))
                                                    <input class="form-control" type="hidden" name="activation[wallet_enable]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[wallet_enable]" value="1" {{ $settings['activation']['wallet_enable'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[wallet_enable]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[wallet_enable]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.wallet_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[coupon_enable]">{{ __('static.settings.coupon_enable') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['coupon_enable']))
                                                    <input class="form-control" type="hidden" name="activation[coupon_enable]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[coupon_enable]" value="1" {{ $settings['activation']['coupon_enable'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[coupon_enable]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[coupon_enable]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.coupon_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[cash]">{{ __('static.settings.cash') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['cash']))
                                                    <input class="form-control" type="hidden" name="activation[cash]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[cash]" value="1" {{ $settings['activation']['cash'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[cash=" 0">
                                                    <input class="form-check-input" type="checkbox" name="activation[cash]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.cash_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[provider_auto_approve]">{{ __('static.settings.auto_approve_provider') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['provider_auto_approve']))
                                                    <input class="form-control" type="hidden" name="activation[provider_auto_approve]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[provider_auto_approve]" value="1" {{ $settings['activation']['provider_auto_approve'] ? 'checked' : '' }}>
                                                    @else
                                                    <input class="form-control" type="hidden" name="activation[provider_auto_approve]" value="0">
                                                    <input class="form-check-input" type="checkbox" name="activation[provider_auto_approve]" value="1">
                                                    @endif
                                                    <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.provider_auto_approve') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[extra_charge_status]">{{ __('static.settings.extra_charge_status') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['extra_charge_status']))
                                                        <input class="form-control" type="hidden" name="activation[extra_charge_status]" value="0">
                                                        <input class="form-check-input" type="checkbox" name="activation[extra_charge_status]" value="1" {{ $settings['activation']['extra_charge_status'] ? 'checked' : '' }}>
                                                    @else
                                                        <input class="form-control" type="hidden" name="activation[extra_charge_status]" value="0">
                                                        <input class="form-check-input" type="checkbox" name="activation[extra_charge_status]" value="1">
                                                    @endif
                                                        <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.extra_charge_status_span') }}</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2" for="activation[default_credentials]">{{ __('static.settings.default_credentials') }}</label>
                                        <div class="col-md-10">
                                            <div class="editor-space">
                                                <label class="switch">
                                                    @if (isset($settings['activation']['default_credentials']))
                                                        <input class="form-control" type="hidden" name="activation[default_credentials]" value="0">
                                                        <input class="form-check-input" type="checkbox" name="activation[default_credentials]" value="1" {{ $settings['activation']['default_credentials'] ? 'checked' : '' }}>
                                                    @else
                                                        <input class="form-control" type="hidden" name="activation[default_credentials]" value="0">
                                                        <input class="form-check-input" type="checkbox" name="activation[default_credentials]" value="1">
                                                    @endif
                                                        <span class="switch-state"></span>
                                                </label>
                                                <span class="help-text">{{ __('static.settings.default_credentials_span') }}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Email_Setting" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="2">

                                    <div>
                                        <div class="form-group row">
                                            <label for="country" class="col-md-2">{{ __('static.settings.mailer') }}<span> *</span></label>
                                            <div class="col-md-10 error-div select-dropdown">
                                                <select class="select-2 form-control select-country" id="email[mail_mailer]" name="email[mail_mailer]" data-placeholder="{{ __('static.settings.select_mail_mailer') }}">
                                                    <option class="select-placeholder" value=""></option>
                                                    @forelse (['smtp' => 'SMTP', 'sendmail' => 'Sendmail'] as $key => $option)
                                                    <option class="option" value={{ $key }} @if ($settings['email']['mail_mailer'] ?? old('mail_mailer')) @if ($key==$settings['email']['mail_mailer']) selected @endif @endif>{{ $option }}</option>
                                                    @empty
                                                    <option value="" disabled></option>
                                                    @endforelse
                                                </select>
                                                @error('mode')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-md-2" for="mail_host">{{ __('static.settings.host') }}<span> *</span></label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="email[mail_host]" id="email[mail_host]" value="{{ isset($settings['email']['mail_host']) ? $settings['email']['mail_host'] : old('mail_host') }}" placeholder="{{ __('static.settings.enter_host') }}">
                                                @error("email[mail_host]")
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-md-2" for="mail_port">{{ __('static.settings.port') }}<span> *</span></label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="number" min="1" name="email[mail_port]" id="email[mail_port]" value="{{ isset($settings['email']['mail_port']) ? $settings['email']['mail_port'] : old('mail_host') }}" placeholder="{{ __('static.settings.enter_port') }}">
                                                @error('mail_port')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="country" class="col-md-2">{{ __('static.settings.mail_encryption') }}<span> *</span></label>
                                            <div class="col-md-10 error-div select-dropdown">
                                                <select class="select-2 form-control select-country" id="email[mail_encryption]" name="email[mail_encryption]" data-placeholder="{{ __('static.settings.select_mail_encryption') }}">
                                                    <option class="select-placeholder" value=""></option>
                                                    @forelse (['tls' => 'TLS', 'ssl' => 'SSL'] as $key => $option)
                                                    <option class="option" value={{ $key }} @if ($settings['email']['mail_encryption'] ?? old('mail_encryption')) @if ($key==$settings['email']['mail_encryption']) selected @endif @endif>{{ $option }}</option>
                                                    @empty
                                                    <option value="" disabled></option>
                                                    @endforelse
                                                </select>
                                                @error('mode')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-md-2" for="mail_username">{{ __('static.settings.mail_username') }}<span> *</span></label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="email[mail_username]" id="email[mail_username]" value="{{ isset($settings['email']['mail_username']) ? $settings['email']['mail_username'] : old('mail_username') }}" placeholder="{{ __('static.settings.enter_username') }}">
                                                @error('mail_username')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-md-2" for="password">{{ __('static.settings.mail_password') }}<span> *</span></label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="password" name="email[mail_password]" id="email[mail_password]" value="{{ isset($settings['email']['mail_password']) ? $settings['email']['mail_password'] : old('mail_password') }}" placeholder="{{ __('static.settings.enter_password') }}">
                                                @error('mail_password')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-md-2" for="mail_from_name">{{ __('static.settings.mail_from_name') }}<span> *</span></label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="email[mail_from_name]" id="email[mail_from_name]" value="{{ isset($settings['email']['mail_from_name']) ? $settings['email']['mail_from_name'] : old('mail_from_name') }}" placeholder="{{ __('static.settings.enter_email_from_name') }}">
                                                @error('mail_from_name')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-md-2" for="mail_from_address">{{ __('static.settings.mail_from_address') }}<span> *</span></label>
                                            <div class="col-md-10">
                                                <input class="form-control" type="text" name="email[mail_from_address]" id="email[mail_from_address]" value="{{ isset($settings['email']['mail_from_address']) ? $settings['email']['mail_from_address'] : old('mail_from_address') }}" placeholder="{{ __('static.settings.enter_email_from_address') }}">
                                                @error('mail_from_address')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>

                                    <hr>
                                    <h4 class="fw-semibold mb-3 theme-color w-100">{{ __('static.test_mail') }}</h4>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="mail">{{ __('static.settings.to_mail') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="text" name="mail" id="mail" placeholder="{{ __('static.enter_email') }}">
                                            @error('mail')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <button id="send-test-mail" name="test_mail" class="btn btn-primary">
                                        {{ __('static.settings.send_test_mail') }}
                                    </button>

                                    <div class="instruction-box">
                                        <div class="instruction-title">
                                            <h4>{{ __('static.instruction') }}</h4>
                                            <p class="text-danger">
                                                {{ __('static.settings.test_mail_note') }}
                                            </p>
                                        </div>
                                        <div class="list-box">
                                            <h5>{{ __('static.settings.test_mail_not_using_ssl') }}</h5>
                                            <ul>
                                                <li>{{ __('static.settings.test_mail_not_ssl_msg_1') }}</li>
                                                <li>{{ __('static.settings.test_mail_not_ssl_msg_2') }}</li>
                                                <li>{{ __('static.settings.test_mail_not_ssl_msg_3') }}</li>
                                                <li>{{ __('static.settings.test_mail_not_ssl_msg_4') }}</li>
                                            </ul>
                                        </div>
                                        <div class="list-box">

                                            <h5>{{ __('static.settings.test_mail_using_ssl') }}</h5>
                                            <ul>
                                                <li>{{ __('static.settings.test_mail_ssl_msg_1') }}</li>
                                                <li>{{ __('static.settings.test_mail_ssl_msg_2') }}</li>
                                                <li>{{ __('static.settings.test_mail_ssl_msg_3') }}</li>
                                                <li>{{ __('static.settings.test_mail_ssl_msg_4') }}</li>
                                            </ul>
                                        </div>
                                    </div>
                            </div>
                            <div class="tab-pane fade" id="App_Update_Popup" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="3">
                                <div class="form-group row">
                                    <label class="col-md-2" for="provider_commissions[status]">{{ __('static.settings.status') }}</label>
                                    <div class="col-md-10">
                                        <div class="editor-space">
                                            <label class="switch">
                                                @if (isset($settings['provider_commissions']['status']))
                                                <input class="form-control" type="hidden" name="provider_commissions[status]" value="0">
                                                <input class="form-check-input" type="checkbox" name="provider_commissions[status]" value="1" {{ $settings['provider_commissions']['status'] ? 'checked' : '' }}>
                                                @else
                                                <input class="form-control" type="hidden" name="provider_commissions[status]" value="0">
                                                <input class="form-check-input" type="checkbox" name="provider_commissions[status]" value="1">
                                                @endif
                                                <span class="switch-state"></span>
                                            </label>
                                            <span class="help-text">{{ __('static.settings.activation_vendor_commissions') }}</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2" for="provider_commissions[min_withdraw_amount]">{{ __('static.settings.min_withdraw_amount') }}</label>
                                    <div class="col-md-10 error-div">
                                        <div class="input-group mb-3 flex-nowrap">
                                            <span class="input-group-text">{{ Helpers::getSettings()['general']['default_currency']->symbol }}</span>
                                            <div class="w-100">
                                                <input class='form-control' type="number" id="provider_commissions[min_withdraw_amount]" name="provider_commissions[min_withdraw_amount]" min="1" value="{{ isset($settings['provider_commissions']['min_withdraw_amount']) ? $settings['provider_commissions']['min_withdraw_amount']  : old('min_withdraw_amount') }}" placeholder="{{ __('static.settings.enter_min_withdraw_amount') }}">
                                                @error('provider_commissions[min_withdraw_amount]')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror
                                                <span class="help-text">{{ __('static.settings.min_amount_for_vendor_withdraw') }}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2" for="provider_commissions[default_commission_rate]">{{ __('static.settings.commission_rate') }}</label>
                                    <div class="col-md-10 error-div">
                                        <div class="input-group mb-3 flex-nowrap">
                                            <div class="w-100 percent">
                                                <input class='form-control' id="provider_commissions[default_commission_rate]" type="number" name="provider_commissions[default_commission_rate]" min="1" value="{{ $settings['provider_commissions']['default_commission_rate'] ?? old('discount') }}" placeholder="{{ __('static.settings.enter_default_commission_rate') }}" oninput="if (value > 100) value = 100; if (value < 0) value = 0;">
                                                <span class="help-text">{{ __('static.settings.set_rate_admin_receive_commission') }}</span>
                                            </div>
                                            <span class="input-group-text">%</span>
                                            @error('provider_commissions[default_commission_rate]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-2" for="provider_commissions[is_category_based_commission]">{{ __('static.settings.is_category_based_commission') }}</label>
                                    <div class="col-md-10">
                                        <div class="editor-space">
                                            <label class="switch">
                                                @if (isset($settings['provider_commissions']['is_category_based_commission']))
                                                <input class="form-control" type="hidden" name="provider_commissions[is_category_based_commission]" value="0">
                                                <input class="form-check-input" type="checkbox" name="provider_commissions[is_category_based_commission]" value="1" {{ $settings['provider_commissions']['is_category_based_commission'] ? 'checked' : '' }}>
                                                @else
                                                <input class="form-control" type="hidden" name="provider_commissions[is_category_based_commission]" value="0">
                                                <input class="form-check-input" type="checkbox" name="provider_commissions[is_category_based_commission]" value="1">
                                                @endif
                                                <span class="switch-state"></span>
                                            </label>
                                            <span class="help-text">{{ __('static.settings.enable_service_category_based_commissions') }}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Google_Recaptcha" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="4">
                                <div class="form-group row">
                                    <label class="col-md-2" for="google_reCaptcha[secret]">{{ __('static.settings.secret') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="google_reCaptcha[secret]" name="google_reCaptcha[secret]" value="{{ $settings['google_reCaptcha']['secret'] ?? old('secret') }}" placeholder="{{ __('static.settings.enter_secret') }}">
                                        @error('google_reCaptcha[secret]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="google_reCaptcha[site_key]">{{ __('static.settings.site_key') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="google_reCaptcha[site_key]" name="google_reCaptcha[site_key]" value="{{ $settings['google_reCaptcha']['site_key'] ?? old('site_key') }}" placeholder="{{ __('static.settings.enter_site_key') }}">
                                        @error('google_reCaptcha[site_key]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="google_reCaptcha[status]">{{ __('static.settings.status') }}</label>
                                    <div class="col-md-10">
                                        <div class="editor-space">
                                            <label class="switch">
                                                @if (isset($settings['google_reCaptcha']['status']))
                                                <input class="form-control" type="hidden" name="google_reCaptcha[status]" value="0">
                                                <input class="form-check-input" type="checkbox" name="google_reCaptcha[status]" value="1" {{ $settings['google_reCaptcha']['status'] ? 'checked' : '' }}>
                                                @else
                                                <input class="form-control" type="hidden" name="google_reCaptcha[status]" value="0">
                                                <input class="form-check-input" type="checkbox" name="google_reCaptcha[status]" value="1">
                                                @endif
                                                <span class="switch-state"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="default_creation_limits" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="6">
                                <div class="form-group row">
                                    <label class="col-md-2" for="default_creation_limits[allowed_max_services]">{{ __('static.settings.services') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="default_creation_limits[allowed_max_services]" name="default_creation_limits[allowed_max_services]" value="{{ $settings['default_creation_limits']['allowed_max_services'] ?? old('allowed_max_services') }}" placeholder="{{ __('static.settings.enter_min_services_limit') }}">
                                        @error('default_creation_limits[allowed_max_services]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                        <span class="help-text">{{ __('static.settings.max_service_provider_can_create') }}</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="default_creation_limits[allowed_max_addresses]">{{ __('static.settings.addresses') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="default_creation_limits[allowed_max_addresses]" name="default_creation_limits[allowed_max_addresses]" value="{{ $settings['default_creation_limits']['allowed_max_addresses'] ?? old('allowed_max_addresses') }}" placeholder="{{ __('static.settings.enter_min_services_limit') }}">
                                        @error('default_creation_limits[allowed_max_addresses]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                        <span class="help-text">{{ __('static.settings.max_addresses_provider_can_create') }}</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="default_creation_limits[allowed_max_servicemen]">{{ __('static.settings.servicemen') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="default_creation_limits[allowed_max_servicemen]" name="default_creation_limits[allowed_max_servicemen]" value="{{ $settings['default_creation_limits']['allowed_max_servicemen'] ?? old('allowed_max_servicemen') }}" placeholder="{{ __('static.settings.enter_min_servicemen_limit') }}">
                                        @error('default_creation_limits[allowed_max_servicemen]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                        <span class="help-text">{{ __('static.settings.max_servicemen_provider_can_create') }}</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="default_creation_limits[allowed_max_service_packages]">{{ __('static.settings.service_packages') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="default_creation_limits[allowed_max_service_packages]" name="default_creation_limits[allowed_max_service_packages]" value="{{ $settings['default_creation_limits']['allowed_max_service_packages'] ?? old('allowed_max_service_packages') }}" placeholder="{{ __('static.settings.enter_min_service_packages_limit') }}">
                                        @error('default_creation_limits[allowed_max_service_packages]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                        <span class="help-text">{{ __('static.settings.max_service_packages_provider_can_create') }}</span>
                                    </div>
                                </div>
                            </div>
                            @if (@$settings['activation']['subscription_enable'])
                            <div class="tab-pane fade" id="subscription_plans" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="7">
                                <div class="form-group row">
                                    <label class="col-md-2" for="subscription_plan['free_trial_days]">{{ __('static.settings.free_trial_days') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="number" min="1" id="subscription_plan[free_trial_days]" name="subscription_plan[free_trial_days]" value="{{ $settings['subscription_plan']['free_trial_days'] ?? old('free_trial_days') }}" placeholder="{{ __('static.settings.enter_free_trial_days') }}">
                                        @error('subscription_plan[free_trial_days]')
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                        <span class="help-text">{{ __('static.settings.free_trail_days') }}</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="subscription_plan[free_trial_enabled]">{{ __('static.settings.status') }}</label>
                                    <div class="col-md-10">
                                        <div class="editor-space">
                                            <label class="switch">
                                                @if (isset($settings['subscription_plan']['free_trial_enabled']))
                                                <input class="form-control" type="hidden" name="subscription_plan[free_trial_enabled]" value="0">
                                                <input class="form-check-input" type="checkbox" name="subscription_plan[free_trial_enabled]" value="1" {{ $settings['subscription_plan']['free_trial_enabled'] ? 'checked' : '' }}>
                                                @else
                                                <input class="form-control" type="hidden" name="subscription_plan[free_trial_enabled]" value="0">
                                                <input class="form-check-input" type="checkbox" name="subscription_plan[free_trial_enabled]" value="1">
                                                @endif
                                                <span class="switch-state"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                            <div class="tab-pane fade" id="firebase" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="8">
                                <div>
                                    <div class="form-group row">
                                        <label for="image" class="col-md-2">{{ __('static.settings.firebase_service_json') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="file" id="firebase[service_json]" accept="application/JSON" name="firebase[service_json]">
                                            @error('firebase[service_json]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="google_map_api_key">{{ __('static.settings.google_map_api_key') }}</label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="text" id="firebase[google_map_api_key]" name="firebase[google_map_api_key]" value="{{ $settings['firebase']['google_map_api_key'] ?? old('google_map_api_key') }}" placeholder="{{ __('static.settings.enter_google_map_api_key') }}">
                                            @error('firebase[google_map_api_key]')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary spinner-btn">{{ __('static.save') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('js')
<script src="{{ asset('admin/js/password-hide-show.js') }}"></script>
<script>
    $(document).ready(function() {
        "use strict";

        $('#send-test-mail').click(function(e) {
            e.preventDefault();

            var form = $('#settingsForm');
            var url = form.attr('action');
            var formData = form.serializeArray();
            var additionalData = {
                test_mail: 'true',
            };

            $.each(additionalData, function(key, value) {
                formData.push({ name: key, value: value });
            });

            $.ajax({
                type: "POST",
                url: url,
                data: formData,
                success: function(response) {
                    let obj = JSON.parse(response);
                    console.log(obj);
                    if (obj.success == true) {
                        toastr.success(obj.message);
                    } else {
                        toastr.error(obj.message);
                    }
                },
                error: function(response) {
                    obj = JSON.parse(response);
                    console.log(obj);
                    toastr.error(obj.message, 'Error');
                }
            });
        });

        $("#settingsForm").validate({
            ignore: [],
            rules: {
                "general[light_logo]": {
                    required: isLightLogo,
                    accept: "image/jpeg, image/png"
                },
                "general[dark_logo]": {
                    required: isDarkLogo,
                    accept: "image/jpeg, image/png"
                },
                "general[favicon]": {
                    required: isFavicon,
                    accept: "image/jpeg, image/png"
                },
                "firebase[service_json]": {
                    required: isFirebaseServiceJson,
                    accept: "application/JSON"
                },
                "email[mail_mailer]": "required",
                "email[mail_host]": "required",
                "email[mail_port]": "required",
                "email[mail_encryption]": "required",
                "email[mail_username]": "required",
                "email[mail_password]": "required",
                "email[mail_from_name]": "required",
                "email[mail_from_address]": "required",
            }
        });





        function isFavicon() {
            @if(isset($settings['general']['favicon']))
            return false;
            @else
            return true;
            @endif
        }

        function isLightLogo() {
            @if(isset($settings['general']['light_logo']))
            return false;
            @else
            return true;
            @endif
        }

        function isDarkLogo() {
            @if(isset($settings['general']['dark_logo']))
            return false;
            @else
            return true;
            @endif
        }

        function isFirebaseServiceJson() {
            @if(isset($settings['firebase']['service_json']))
            return false;
            @else
            return true;
            @endif
        }
    });
</script>
@endpush
