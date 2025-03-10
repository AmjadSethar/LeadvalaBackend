@extends('backend.layouts.master')

@section('title', __('static.review.all'))

@section('content')
    <div class="card">
        <div class="card-header d-flex align-items-center">
            <h5>{{ __('static.review.all') }}</h5>
            <div class="btn-action">
                <a href="javascript:void(0);" class="btn btn-sm btn-secondary deleteConfirmationBtn" style="display: none;" data-url="{{ route('backend.delete.user.reviews') }}">
                    <span id="count-selected-rows">0</span>{{__('static.delete_selected')}}
                </a>
            </div>
        </div>
        <div class="card-body common-table">
            <div class="userreview-table">
                <div class="table-responsive">
                    {!! $dataTable->table() !!}
                </div>
            </div>
        </div>
    </div>
@endsection

@push('js')
    {!! $dataTable->scripts() !!}
@endpush
