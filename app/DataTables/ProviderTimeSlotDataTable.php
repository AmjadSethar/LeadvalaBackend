<?php

namespace App\DataTables;

use App\Models\TimeSlot;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Services\DataTable;

class ProviderTimeSlotDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param  QueryBuilder  $query  Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return (new EloquentDataTable($query))
            ->setRowId('id')
            ->editColumn('created_at', function ($row) {
                return $row->created_at->diffForHumans();
            })
            ->editColumn('provider.name', function ($row) {
                return $row?->provider ? $row?->provider?->name : $row->name;
            })
            ->editColumn('checkbox', function ($row) {
                return '<div class="form-check"><input type="checkbox" name="row" class="rowClass form-check-input" value='.$row->id.' id="rowId'.$row->id.'"></div>';
            })
            ->editColumn('action', function ($row) {
                return view('backend.inc.action', [
                    'edit' => 'backend.provider-time-slot.edit',
                    'delete' => 'backend.provider-time-slot.destroy',
                    'edit_permission' => 'backend.provider_time_slot.edit',
                    'delete_permission' => 'backend.provider_time_slot.destroy',
                    'data' => $row,
                ]);
            })
            ->rawColumns(['checkbox', 'user.name', 'action', 'created_at']);
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(TimeSlot $model): QueryBuilder
    {
        $timeSlots = $model->newQuery()->with('provider');
        if (request()->order) {
            if ((bool) head(request()->order)['column']) {
                $index = head(request()->order)['column'];
                if (!isset(request()->columns[$index]['orderable'])) {
                    return $timeSlots;
                }
            }
        }

        return $timeSlots?->orderBy('time_slots.created_at', 'desc');
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        $user = auth()->user();
        $builder = $this->builder();
        $no_records_found = __('static.no_records_found');

        $builder->setTableId('providertimeslot-table');
        if ($user?->can('backend.provider_time_slot.destroy')) {
            $builder->addColumn(['data' => 'checkbox', 'title' => '<div class="form-check"><input type="checkbox" class="form-check-input" title="Select All" id="select-all-rows" /> </div>', 'class' => 'title', 'orderable' => false, 'searchable' => false]);
        }

        $builder->addColumn(['data' => 'provider.name', 'title' => __('static.provider_time_slot.provider_name'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'gap', 'title' => __('static.provider_time_slot.interval'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'created_at', 'title' => __('static.created_at'), 'orderable' => true, 'searchable' => false]);

        if ($user->can('backend.provider_time_slot.edit') || $user->can('backend.provider_time_slot.destroy')) {
            $builder->addColumn(['data' => 'action', 'title' => __('static.action'), 'orderable' => false, 'searchable' => false]);

        }

        return $builder->minifiedAjax()
        ->selectStyleSingle()
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
        return 'ProviderTimeSlot_'.date('YmdHis');
    }
}
