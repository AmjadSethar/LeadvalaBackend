<?php

namespace App\DataTables;

use App\Helpers\Helpers;
use App\Models\ProviderTransaction;
use App\Models\ServicemanTransaction;
use Illuminate\Database\Eloquent\Builder as QueryBuilder;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Html\Builder as HtmlBuilder;
use Yajra\DataTables\Services\DataTable;

class ServicemanTransactionsDataTable extends DataTable
{
    /**
     * Build the DataTable class.
     *
     * @param  QueryBuilder  $query  Results from query() method.
     */
    public function dataTable(QueryBuilder $query): EloquentDataTable
    {
        $currencySymbol = Helpers::getSettings()['general']['default_currency']->symbol;

        return (new EloquentDataTable($query))
            ->editColumn('amount', function ($row) use ($currencySymbol) {
                return $currencySymbol.''.$row->amount;
            })
            ->editColumn('type', function ($row) {
                $labelClass = $row->type === 'credit' ? 'success' : 'danger';

                return '<span class="badge badge-'.$labelClass.'-light">'.ucfirst($row->type).'</span>';
            })
            ->editColumn('created_at', function ($row) {
                return $row->created_at->diffForHumans();
            })
            ->setRowId('id')
            ->rawColumns(['type', 'amount', 'created_at']);
    }

    /**
     * Get the query source of dataTable.
     */
    public function query(ServicemanTransaction $model): QueryBuilder
    {
        if (auth()->user()->hasRole('serviceman')) {
            $walletId = Helpers::getServicemanWalletIdByServicemanId(auth()->user()->id);
        } else {
            $walletId = Helpers::getServicemanWalletIdByServicemanId(request()->serviceman_id);
        }

        return $model->newQuery()->where('serviceman_wallet_id', $walletId);
    }

    /**
     * Optional method if you want to use the html builder.
     */
    public function html(): HtmlBuilder
    {
        $no_records_found = __('static.no_records_found');

        return $this->builder()
            ->setTableId('servicemantransactions-table')
            ->addColumn(['data' => 'amount', 'title' => __('static.transactions.amount'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'type', 'title' => __('static.transactions.type'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'detail', 'title' => __('static.transactions.remark'), 'orderable' => true, 'searchable' => true])
            ->addColumn(['data' => 'created_at', 'title' => __('static.created_at'), 'orderable' => true, 'searchable' => true, 'order' => ['desc']])
            ->minifiedAjax()
            ->selectStyleSingle()
            ->orderBy(3)
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
        return 'ServicemanTransactions_'.date('YmdHis');
    }
}
