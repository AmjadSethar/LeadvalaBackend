@extends('backend.layouts.master')
@section('title', __('static.profile'))
@section('breadcrumbs')
    <li class="breadcrumb-item active">{{ __('static.profile') }}</li>
@endsection
@section('content')
    <div class="row">
        <div class="m-auto col-xl-10 col-xxl-8">
            <div class="card tab2-card">
                <div class="card-header">
                    <h5>{{ __('static.edit_profile') }}</h5>
                </div>
                <div class="card-body profile-detail">
                    <ul class="nav nav-tabs nav-material" id="top-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link {{ $errors->has('name') || $errors->has('email') || $errors->has('role') || $errors->has('country_id') || $errors->has('state_id') || $errors->has('city') || $errors->has('phone') || $errors->has('countryCode') || $errors->has('latitude') || $errors->has('longitude') || !$errors->any() ? 'show active' : '' }}"
                                id="top-profile-tab" data-bs-toggle="tab" href="#top-profile" role="tab"
                                aria-controls="top-profile" aria-selected="true">
                                <i data-feather="user"></i>{{ __('static.profile') }}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ $errors->has('current_password') || $errors->has('new_password') || $errors->has('confirm_password') ? 'active' : '' }}"
                                id="changepassword-tab" data-bs-toggle="tab" href="#changepassword" role="tab"
                                aria-controls="changepassword" aria-selected="false">
                                <i data-feather="eye"></i>{{ __('static.change_password') }}
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content" id="top-tabContent">
                        <div class="tab-pane fade {{ $errors->has('name') || $errors->has('email') || $errors->has('country_id') || $errors->has('state_id') || $errors->has('city') || $errors->has('phone') || $errors->has('countryCode') || $errors->has('latitude') || $errors->has('longitude') || !$errors->any() ? 'show active' : '' }}"
                            id="top-profile" role="tabpanel" aria-labelledby="top-profile-tab">
                            <form action="{{ route('backend.account.profile.update') }}" method="POST" id="profileForm"
                                enctype="multipart/form-data">
                                @method('PUT')
                                @csrf
                                <div class="form-group row">
                                    <label class="col-md-2" for="name">{{ __('static.serviceman.image') }}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="file" name="image" accept=".jpg, .png, .jpeg" value="{{ old('image') }}">
                                        @error('image')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                @if (Auth::user()->getFirstMediaUrl('image') && Auth::user()->getFirstMediaUrl('image') !== null)
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2"></div>
                                            <div class="col-md-10">
                                                <div class="image-list">
                                                    @foreach (Auth::user()->media as $media)
                                                        <div class="image-list-detail">
                                                            <div class="position-relative">
                                                                <img src="{{ $media['original_url'] }}"
                                                                    id="{{ $media['id'] }}" alt="User Image"
                                                                    class="image-list-item">
                                                                <div class="close-icon">
                                                                    <i data-feather="x"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                                <div class="form-group row">
                                    <label class="col-md-2" for="name">{{ __('static.name') }}<span> *</span></label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="name" name="name"
                                            value="{{ Auth::user()->name ? Auth::user()->name : old('name') }}"
                                            placeholder="{{ __('static.users.enter_name') }}">
                                        @error('name')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="email">{{ __('static.email') }}<span> *</span></label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text" id="email" name="email"
                                            value="{{ Auth::user()->email ? Auth::user()->email : old('email') }}"
                                            placeholder="{{ __('static.users.enter_email') }}">
                                        @error('email')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2" for="phone">{{ __('static.phone') }}<span> *</span></label>
                                    <div class="col-md-10">
                                        <div class="input-group mb-3 phone-detail">
                                            <div class="col-sm-1">
                                                <select class="form-control select-country-code" id="select-country-code"
                                                    name="code" data-placeholder="1">
                                                    @php
                                                        $default = old('code', Auth::user()->code ?? 1);
                                                    @endphp
                                                    <option value="" selected></option>
                                                    @foreach (App\Helpers\Helpers::getCountryCodes() as $key => $option)
                                                        <option class="option" value="{{ $option->phone_code }}"
                                                            data-image="{{ asset('admin/images/flags/' . $option->flag) }}"
                                                            @if ($option->phone_code == $default) selected @endif
                                                            data-default="{{ $default }}">
                                                            {{ $option->phone_code }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                                @error('code')
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-11">
                                                <input class="form-control" type="number" name="phone" id="phone"
                                                    value="{{ isset(Auth::user()->phone) ? Auth::user()->phone : old('phone') }}"
                                                    min="1"
                                                    placeholder="{{ __('static.serviceman.enter_phone_number') }}">
                                            </div>
                                        </div>
                                        @error('phone')
                                            <span class="invalid-feedback d-block" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                @if (!Auth::user()->hasRole('admin'))
                                    @php
                                        $address = auth()->user()->PrimaryAddress;
                                        if (isset($address->country_id) || old('country_id')) {
                                            $states = \App\Models\State::where(
                                                'country_id',
                                                old('country_id', @$address->country_id),
                                            )->get();
                                        } else {
                                            $states = [];
                                        }
                                    @endphp
                                    @php
                                        $default = old('country_id', @$address->country_id);
                                    @endphp
                                    <div class="form-group row">
                                        <label for="country" class="col-md-2">{{ __('static.users.country') }}<span>
                                                *</span></label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control select-country" id="select-country"
                                                name="country_id" data-placeholder="{{ __('static.users.select_country') }}">
                                                <option class="select-placeholder" value=""></option>
                                                @forelse ($countries as $key => $option)
                                                    <option class="option" value={{ $key }}
                                                        @if ($key == $default) selected @endif>{{ $option }}
                                                    </option>
                                                @empty
                                                    <option value="" disabled></option>
                                                @endforelse
                                            </select>
                                            @error('country_id')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <input type="hidden" name="address_id" value="{{ $address->id ?? null }}">
                                    <div class="form-group row">
                                        <label for="state" class="col-md-2">{{ __('static.users.state') }}<span>
                                                *</span></label>
                                        <div class="col-md-10 error-div select-dropdown">
                                            <select class="select-2 form-control select-state"
                                                data-placeholder="{{ __('static.users.select_state') }}" id="state_id"
                                                name="state_id" data-default-state-id="{{ $address->state_id ?? '' }}"
                                                required>
                                                <option class="select-placeholder" value=""></option>
                                                @php
                                                    $default = old('state_id', @$address->state_id);
                                                @endphp
                                                @if (count($states))
                                                    @foreach ($states as $key => $state)
                                                        <option class="option" value={{ $state->id }}
                                                            @if ($state->id == $default) selected @endif
                                                            data-default="{{ $default }}">
                                                            {{ $state->name }}
                                                        </option>
                                                    @endforeach
                                                @endif
                                            </select>
                                            @error('state_id')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="branch_name">{{ __('static.city') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="text" name="city"
                                                value="{{ isset($address->city) ? $address->city : old('city') }}"
                                                placeholder="{{ __('static.users.enter_city') }}">
                                            @error('city')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="branch_name">{{ __('static.area') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="text" name="area"
                                                value="{{ isset($address->area) ? $address->area : old('area') }}"
                                                placeholder="{{ __('static.users.enter_area') }}">
                                            @error('city')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="branch_name">{{ __('static.postal_code') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <input class="form-control" type="number" name="postal_code"
                                                value="{{ isset($address->postal_code) ? $address->postal_code : old('postal_code') }}"
                                                placeholder="{{ __('static.users.postal_code') }}">
                                            @error('postal_code')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="address" class="col-md-2">{{ __('static.users.address') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" placeholder="{{ __('static.account.enter_address') }}" rows="4" id="address" name="address"
                                                cols="50">{{ $address->address ?? old('address') }}</textarea>
                                            @error('address')
                                                <span class="invalid-feedback d-block" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <input type="hidden" name="is_primary" value="true">
                                @endif
                                <div class="footer">
                                    <button type="submit"
                                        class="btn btn-primary spinner-btn">{{ __('static.submit') }}</button>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade {{ $errors->has('new_password') || $errors->has('confirm_password') || $errors->has('current_password') ? 'active show' : '' }}"
                            id="changepassword" role="tabpanel" aria-labelledby="changepassword-tab">
                            <form action="{{ route('backend.account.password.update') }}" method="POST"
                                id="changePasswordForm" enctype="multipart/form-data">
                                <div class="account-setting">
                                    @csrf
                                    @method('put')
                                    <div class="form-group row">
                                        <label class="col-md-2"
                                            for="current_password">{{ __('static.current_password') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <div class="position-relative">
                                                <input class="form-control" id="current_password" type="password"
                                                    name="current_password" autocomplete="off"
                                                    value="{{ old('current_password') }}"
                                                    placeholder="{{ __('static.serviceman.enter_current_password') }}">
                                                <div class="toggle-password">
                                                    <i data-feather="eye" class="eye"></i>
                                                    <i data-feather="eye-off" class="eye-off"></i>
                                                </div>
                                                @error('current_password')
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2" for="new_password">{{ __('static.new_password') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <div class="position-relative">
                                                <input class="form-control" id="new_password" type="password"
                                                    name="new_password" autocomplete="off"
                                                    value="{{ old('new_password') }}"
                                                    placeholder="{{ __('static.serviceman.enter_password') }}">
                                                <div class="toggle-password">
                                                    <i data-feather="eye" class="eye"></i>
                                                    <i data-feather="eye-off" class="eye-off"></i>
                                                </div>
                                                @error('new_password')
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-2"
                                            for="confirm_password">{{ __('static.confirm_password') }}<span>
                                                *</span></label>
                                        <div class="col-md-10">
                                            <div class="position-relative">
                                                <input class="form-control" id="confirm_password" type="password"
                                                    name="confirm_password" value="{{ old('confirm_password') }}"
                                                    autocomplete="off"
                                                    placeholder="{{ __('static.serviceman.re_enter_password') }}">
                                                <div class="toggle-password">
                                                    <i data-feather="eye" class="eye"></i>
                                                    <i data-feather="eye-off" class="eye-off"></i>
                                                </div>
                                                @error('confirm_password')
                                                    <span class="invalid-feedback d-block" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <button type="submit"
                                        class="btn btn-primary spinner-btn">{{ __('static.submit') }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script>
        (function($) {
            "use strict";

            $(document).ready(function() {
                let profileFormRules = {
                    "image": {
                        accept: "image/jpeg, image/png"
                    },
                    "name": "required",
                    "email": "required",
                    "phone": "required"
                };

                @cannot('admin')
                    profileFormRules["country_id"] = "required";
                    profileFormRules["state_id"] = "required";
                    profileFormRules["city"] = "required";
                    profileFormRules["area"] = "required";
                    profileFormRules["postal_code"] = "required";
                    profileFormRules["address"] = "required";
                @endcannot

                $("#profileForm").validate({
                    ignore: [],
                    rules: profileFormRules,
                    messages: {
                        "image": {
                            accept: "Only JPEG and PNG files are allowed.",
                        },
                    }
                });

                $("#changePasswordForm").validate({
                    ignore: [],
                    rules: {
                        "current_password": "required",
                        "new_password": {
                            required: true
                        },
                        "confirm_password": {
                            required: true,
                            equalTo: "#new_password"
                        },
                    },
                });
            });
        })(jQuery);
    </script>
@endpush

