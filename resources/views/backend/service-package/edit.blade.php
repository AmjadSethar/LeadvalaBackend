@extends('backend.layouts.master')
@section('title', __('static.service_package.service_package'))
@section('content')
    <div class="row">
        <div class="m-auto col-xl-10 col-xxl-8">
            <div class="card tab2-card">
                <div class="card-header">
                    <h5>{{ __('static.service_package.edit') }}</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('backend.service-package.update', $service_package->id) }}" id="servicepackageForm" method="POST"
                        enctype="multipart/form-data">
                        @method('PUT')
                        @csrf
                            @include('backend.service-package.fields')
                        <div class="footer">
                            <button id='submitBtn' type="submit" class="btn btn-primary spinner-btn">{{ __('static.submit') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection