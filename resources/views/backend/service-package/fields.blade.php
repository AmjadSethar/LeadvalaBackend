@push('style')
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/css/vendors/flatpickr.min.css') }}">
@endpush
@use('app\Helpers\Helpers')
<div class="form-group row">
    <label for="image" class="col-md-2">{{ __('static.categories.image') }}</label>
    <div class="col-md-10">
        <input class='form-control' type="file" accept=".jpg, .png, .jpeg" id="image" name="image[]">
        @error('image')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
</div>

@if (isset($service_package->media) && !$service_package->media->isEmpty())
    <div class="form-group">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                <div class="image-list">
                    @foreach ($service_package->media as $media)
                        <div class="image-list-detail">
                            <div class="position-relative">
                                <img src="{{ $media['original_url'] }}" id="{{ $media['id'] }}" alt="User Image"
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
    <label class="col-md-2" for="title">{{ __('static.title') }}<span> *</span></label>
    <div class="col-md-10">
        <input class='form-control' type="text" id="title" name="title"
            value="{{ isset($service_package->title) ? $service_package->title : old('title') }}"
            placeholder="{{ __('static.service_package.enter_title') }}">
        @error('title')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
</div>
@hasrole('admin')
    <div class="form-group row">
        <label class="col-md-2" for="provider_id">{{ __('static.service.provider') }}<span> *</span></label>
        <div class="col-md-10 error-div select-dropdown">
            <select class="select-2 form-control" id="provider_id" name="provider_id"
                data-placeholder="{{ __('static.service.select_provider') }}">
                <option class="select-placeholder" value=""></option>
                @foreach ($providers as $key => $option)
                    <option class="option" value="{{ $key }}"
                        {{ old('provider_id', isset($service_package) ? $service_package->provider_id : '') == $key ? 'selected' : '' }}>
                        {{ $option }}</option>
                @endforeach
            </select>
            @error('provider_id')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
@endhasrole

@hasrole('provider')
    <input type="hidden" name="provider_id" value="{{ auth()->user()->id }}">
@endhasrole


<div class = 'form-group row'>
    <label class="col-md-2" for="service_id">{{ __('static.service_package.services') }}
        <span> *</span> </label>
    <div class="col-md-10 error-div select-dropdown">
        <select id="services" class="select-2 form-control" search="true" name="service_id[]"
            data-placeholder="{{ __('static.service.select_services') }}" multiple>
            <option value=""></option>
        </select>
        @error('service_id')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
</div>
<div class="form-group row">
    <label class="col-md-2" for="price">{{ __('static.service_package.price') }}<span> *</span></label>
    <div class="col-md-10 error-div">
        <div class="input-group mb-3 flex-nowrap">
            <span class="input-group-text">{{ Helpers::getSettings()['general']['default_currency']->symbol }}</span>
            <div class="w-100">
                <input class='form-control' type="number" id="price" name="price" min="1"
                    value="{{ isset($service_package->price) ? $service_package->price : old('price') }}"
                    placeholder="{{ __('static.service_package.enter_price') }}">
                @error('price')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
    </div>
</div>
<div class="form-group row">
    <label class="col-md-2" for="discount">{{ __('static.service_package.discount') }}<span> *</span></label>
    <div class="col-md-10 error-div">
        <div class="input-group mb-3 flex-nowrap">
            <div class="w-100 percent">
                <input class='form-control' id="discount" type="number" name="discount" min="1"
                    value="{{ $service_package->discount ?? old('discount') }}"
                    placeholder="{{ __('static.service_package.enter_discount') }}"
                    oninput="if (value > 100) value = 100; if (value < 0) value = 0;">
            </div>
            <span class="input-group-text">%</span>
            @error('discount')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
</div>

<div class="form-group row">
    <label for="description" class="col-md-2">{{ __('static.service_package.description') }}</label>
    <div class="col-md-10">
        <textarea class="form-control" rows="4" name="description" id="description"
            placeholder="{{ __('static.tag.enter_description') }}" cols="50">{{ $service_package->description ?? old('description') }}</textarea>
        @error('description')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
</div>
<div class="form-group row flatpicker-calender">
    <label class="col-md-2" for="start_end_date">{{ __('static.service_package.date') }}
        <span> *</span> </label>
    <div class="col-md-10">
        @if (isset($service_package))
            <input class="form-control" id="date-range"
                value="{{ @$service_package->started_at }} to {{ @$service_package->ended_at }}"
                name="start_end_date" placeholder="{{ __('static.service_package.select_date') }}">
        @else
            <input class="form-control" id="date-range" name="start_end_date"
                placeholder="{{ __('static.service_package.select_date') }}">
        @endif
        @error('start_end_date')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
</div>
<div class="form-group row">
    <label class="col-md-2" for="hexa_code">{{ __('static.hexa_code') }}<span> *</span></label>
    <div class="col-md-10">
        <div class="d-flex align-items-center gap-2">
            <input class="form-control" type="color" name="hexa_code" id="hexa_code"
                value="{{ isset($service_package->hexa_code) ? $service_package->hexa_code : old('hexa_code') }}"
                placeholder="{{ __('static.service_package.enter_color') }}">
            <span class="color-picker">#000</span>
        </div>
        @error('hexa_code')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
</div>
<div class="form-group row">
    <label class="col-md-2" for="role">{{ __('static.service_package.is_featured') }}</label>
    <div class="col-md-10">
        <div class="editor-space">
            <label class="switch">
                @if (isset($service_package))
                    <input class="form-control" type="hidden" name="is_featured" value="0">
                    <input class="form-check-input" type="checkbox" name="is_featured" id=""
                        value="1" {{ $service_package->is_featured ? 'checked' : '' }}>
                @else
                    <input class="form-control" type="hidden" name="is_featured" value="0">
                    <input class="form-check-input" type="checkbox" name="is_featured" id=""
                        value="1">
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
                @if (isset($service_package))
                    <input class="form-control" type="hidden" name="status" value="0">
                    <input class="form-check-input" type="checkbox" name="status" id="" value="1"
                        {{ $service_package->status ? 'checked' : '' }}>
                @else
                    <input class="form-control" type="hidden" name="status" value="0">
                    <input class="form-check-input" type="checkbox" name="status" id="" value="1"
                        checked>
                @endif
                <span class="switch-state"></span>
            </label>
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
            $("#servicepackageForm").validate({
                ignore: [],
                rules: {
                    "provider_id": "required",
                    "title": "required",
                    "provider_id": "required",
                    "start_end_date": "required",
                    "service_id[]": "required",
                    "price": "required",
                    "discount": "required",
                    "image[]": {
                        accept: "image/jpeg, image/png"
                    },
                    "hexa_code": "required",
                }
            });

            // Handle provider change on page load
            var initialProviderID = $('input[name="provider_id"]').val() || $('select[name="provider_id"]')
                .val();
            if (initialProviderID) {
                loadServices(initialProviderID);
            }
            @isset($service_package)
                var selectedServices = {!! json_encode($service_package->services->pluck('id')->toArray() ?? []) !!};
                loadServices(initialProviderID, selectedServices);
            @endisset

            // Handle provider change
            $('select[name="provider_id"]').on('change', function() {
                var providerID = $(this).val();
                loadServices(providerID);
            });

            const colorInput = $('#hexa_code');
            const colorPickerSpan = $('.color-picker');

            // Initialize span with the initial color input value
            colorPickerSpan.text(colorInput.val());

            // Update span text content when the color input value changes
            colorInput.on('input', function() {
                colorPickerSpan.text($(this).val());
            });
        });
        // Function to load services based on the selected provider
        function loadServices(providerID, selectedServices) {
            let url = "{{ route('backend.get-provider-services', '') }}";

            if (providerID) {
                $.ajax({
                    url: url,
                    type: "GET",
                    data: {
                        provider_id: providerID,
                    },
                    success: function(data) {
                        // Clear and repopulate the dropdown with new data
                        $('#services').empty();
                        $.each(data, function(id, text) {
                            var option = new Option(text, id);
                            // Convert id to string and check if it's in the selectedServices array
                            if (selectedServices && selectedServices.includes(String(id))) {
                                $('#services').append(option);
                            } else {
                                $('#services').append(option);
                            }
                        });

                        // Set selected options based on the service_package data
                        $('#services').val(selectedServices).trigger('change');
                    },
                });
            }
        }

        function isServiceImages() {
            @if (isset($service_package->media) && !$service_package->media->isEmpty())
                return false;
            @else
                return true;
            @endif
        }
    })(jQuery);
</script>
@endpush
