<?php

namespace Modules\Coupon\Http\Controllers\Backend;

use App\DataTables\CouponDataTable;
use App\Models\Service;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Coupon\Entities\Coupon;
use Modules\Coupon\Http\Requests\CreateCouponRequest;
use Modules\Coupon\Http\Requests\UpdateCouponRequest;
use Modules\Coupon\Repositories\CouponRepository as RepositoriesCouponRepository;

class CouponController extends Controller
{
    use AuthorizesRequests;
    /**
     * Display a listing of the resource.
     *
     * @return Renderable
     */
    public $repository;

    public $service;

    public function __construct(RepositoriesCouponRepository $repository, Service $service)
    {
        $this->authorizeResource(Coupon::class, 'coupon');
        $this->repository = $repository;
        $this->service = $service;
    }

    public function index(CouponDataTable $dataTable)
    {
        return $dataTable->render('coupon::index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Renderable
     */
    public function create()
    {
        $services = $this->service->pluck('title', 'id');

        return view('coupon::create', ['services' => $services]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Renderable
     */
    public function store(CreateCouponRequest $request)
    {
        return $this->repository->store($request);
    }

    /**
     * Show the specified resource.
     *
     * @param  int  $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('coupon::show');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Renderable
     */
    public function edit(Coupon $coupon)
    {
        return $this->repository->edit($coupon?->id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Renderable
     */
    public function update(UpdateCouponRequest $request, Coupon $coupon)
    {
        return $this->repository->update($request, $coupon?->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Renderable
     */
    public function destroy(Coupon $coupon)
    {
        return $this->repository->destroy($coupon?->id);
    }

    public function toggleStatus(Request $request)
    {
        return $this->repository->status($request);
    }

    public function status(Request $request, $id)
    {
        return $this->repository->status($id, $request->status);
    }

    public function deleteRows(Request $request)
    {
        try {
            foreach ($request->id as $row => $key) {
                $coupon = Coupon::find($request->id[$row]);
                $coupon->delete();
            }
        } catch (\Exception $e) {
            throw $e;
        }
    }
}
