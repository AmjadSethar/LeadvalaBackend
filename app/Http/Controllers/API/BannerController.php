<?php

namespace App\Http\Controllers\API;

use App\Exceptions\ExceptionHandler;
use App\Http\Controllers\Controller;
use App\Http\Requests\API\CreateBannerRequest;
use App\Models\Banner;
use App\Repositories\API\BannerRepository;
use Exception;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    public $repository;

    public function __construct(BannerRepository $repository)
    {
        $this->authorizeResource(Banner::class, 'banner',[
            'except' => ['index','show'],
        ]);
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        try {

            return $this->repository->index($request);
        } catch (Exception $e) {

            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateBannerRequest $request)
    {
        return $this->repository->store($request);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        return $this->repository->show($id);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
