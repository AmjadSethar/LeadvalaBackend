<?php

namespace App\DataTables;

use App\Models\User;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Services\DataTable;

class CustomerDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param  QueryBuilder  $query  Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        return datatables()
            ->eloquent($query)
            ->addIndexColumn()
            ->editColumn('Image', function ($row) {
                if ($row->name) {
                    $media = $row->getFirstMedia('image');
                    if ($media) {
                        $imageTag = '<img src="'.$media->getUrl().'" alt="Image" class="img-thumbnail img-fix">';
                    } else {
                        $imageTag = '<div class="initial-letter">'.strtoupper(substr($row->name, 0, 1)).'</div>';
                    }

                    return '<div class="initial-div">'.$imageTag.' '.'</div>';
                } else {
                    return '<div class="initial-letter">NA</div>';
                }
            })
            ->editColumn('created_at', function ($row) {
                return $row->created_at->diffForHumans();
            })
            ->editColumn('phone', function ($row) {
                if(isset($row->phone) && isset($row->code)){
                    return '+'.''.$row->code.''.$row->phone;
                }
                return 'N/A';
            })
            ->editColumn('name', function ($row) {
                return $row->name ?? 'NA';
            })
            ->editColumn('email', function ($row) {
                return $row->email ?? 'NA';
            })
            ->editColumn('action', function ($row) {
                return view('backend.inc.action', [
                    'edit' => 'backend.customer.edit',
                    'delete' => 'backend.customer.destroy',
                    'wallet' => 'backend.wallet.creditOrdebit',
                    'data' => $row,
                ]);
            })
            ->editColumn('status', function ($row) {
                return view('backend.inc.action', [
                    'toggle' => $row,
                    'name' => 'status',
                    'route' => 'backend.customer.status',
                    'value' => $row->status,
                ]);
            })
            ->editColumn('checkbox', function ($row) {
                if ($row->getRoleNames()->first() == 'Admin' || $row->system_reserve) {
                    return '<div class="form-check"><input type="checkbox" class="form-check-input" id="disable-select" disabled></div>';
                }

                return '<div class="form-check"><input type="checkbox" name="row" class="rowClass form-check-input" value='.$row->id.' id="rowId'.$row->id.'"></div>';
            })->rawColumns(['checkbox', 'Image', 'action', 'created_at', 'status']);
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(User $model): QueryBuilder
    {
        $customers = $model->newQuery()->role('user')->where('system_reserve', 0);
        if (request()->order) {
            if ((bool) head(request()->order)['column']) {
                $index = head(request()->order)['column'];
                if (! isset(request()->columns[$index]['orderable'])) {
                    return $customers;
                }
            }
        }

        return $customers->orderBy('created_at', 'desc');
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        $no_records_found = __('static.no_records_found');
        $user = auth()->user();
        $builder = $this->builder();

        if ($user?->can('backend.role.destroy')) {
            $builder->setTableId('user-table')
            ->addColumn(['data' => 'checkbox', 'title' => '<div class="form-check"><input type="checkbox" class="form-check-input" title="Select All" id="select-all-rows" /> </div>', 'class' => 'title', 'orderable' => false, 'searchable' => false]);
        }

        $builder->addColumn(['data' => 'Image', 'title' => __('static.image'), 'orderable' => false, 'searchable' => false])
            ->addColumn(['data' => 'name', 'title' => __('static.name'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'phone', 'title' => __('static.phone'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'email', 'title' => __('static.email'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'created_at', 'title' => 'Created At', 'orderable' => true, 'searchable' => true]);

        if ($user?->can('backend.role.edit')) {
            $builder->addColumn(['data' => 'status', 'title' => __('static.status'), 'orderable' => true, 'searchable' => false]);
        }

        if ($user?->can('backend.role.edit') || $user?->can('backend.role.destroy')) {
            $builder->addColumn(['data' => 'action', 'title' => __('static.action'), 'orderable' => false, 'searchable' => false]);

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
        return 'Customer_'.date('YmdHis');
    }
}
