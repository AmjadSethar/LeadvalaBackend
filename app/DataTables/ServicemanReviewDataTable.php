<?php

namespace App\DataTables;

use App\Enums\RoleEnum;
use App\Models\Review;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Services\DataTable;

class ServicemanReviewDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param  QueryBuilder  $query  Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->editColumn('checkbox', function ($row) {
                return '<div class="form-check"><input type="checkbox" name="row" class="rowClass form-check-input" value='.$row->id.' id="rowId'.$row->id.'"></div>';
            })
            ->editColumn('action', function ($row) {
                return view('backend.inc.action', [
                    'delete' => 'backend.user-review-delete',
                    'data' => $row,
                ]);
            })
            ->setRowId('id')->rawColumns(['checkbox']);
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(Review $model): QueryBuilder
    {
        $roleName = auth('web')->user()->roles->pluck('name')->first();
        if (auth()->check()) {
            if ($roleName == RoleEnum::PROVIDER) {
                return $model->newQuery()->whereNotNull('serviceman_id')->where('provider_id', auth()->user()->id)->with('serviceman');
            } else {
                return $model->newQuery()->whereNotNull('serviceman_id')->with('serviceman');
            }
        }
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        $user = auth()->user();
        $builder = $this->builder();
        $no_records_found = __('static.no_records_found');

        if ($user?->can('backend.serviceman.destroy')) {
            $builder->setTableId('servicemanreview-table')
            ->addColumn(['data' => 'checkbox', 'title' => '<div class="form-check"><input type="checkbox" class="form-check-input" title="Select All" id="select-all-rows"/> </div>', 'class' => 'title', 'orderable' => false, 'searchable' => false]);
        }

        $builder->addColumn(['data' => 'consumer.name', 'title' => 'Consumer Name', 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'service.title', 'title' => 'Service Name', 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'rating', 'title' => 'Rating', 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'description', 'title' => 'Description', 'orderable' => true, 'searchable' => true]);


        if ($user?->can('backend.serviceman.edit') || $user?->can('backend.serviceman.destroy')) {
           if ($user?->can('backend.serviceman.edit')) {
               $builder->addColumn(['data' => 'status', 'title' => __('static.status'), 'orderable' => true, 'searchable' => true]);
           }
            $builder->addColumn(['data' => 'action', 'title' => 'Action', 'orderable' => false, 'searchable' => false]);
        }

        return $builder->minifiedAjax()
        ->parameters([
            'language' => [
                'emptyTable' => $no_records_found,
                'infoEmpty' => '',
                'zeroRecords' => $no_records_found,
            ],
            'drawCallback' => 'function(settings) {
                if (settings._iRecordsDisplay === 0) {
                    $(settings.nTableWrapper).find(".dataTables_paginate").hide();
                } else {
                    $(settings.nTableWrapper).find(".dataTables_paginate").show();
                }
                feather.replace();
            }',
        ]);
    }

    /**
     * Get the dataTable columns definition.
     */
    public function getColumns(): array
    {
        return [];
    }

    /**
     * Get the filename for export.
     */
    protected function filename(): string
    {
        return 'ServicemanReview_'.date('YmdHis');
    }
}
