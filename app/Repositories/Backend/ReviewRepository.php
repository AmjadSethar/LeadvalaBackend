<?php

namespace App\Repositories\Backend;

use App\Models\Review;
use App\Models\Service;
use Illuminate\Support\Facades\DB;
use Prettus\Repository\Eloquent\BaseRepository;

class ReviewRepository extends BaseRepository
{
    protected $service;

    public function model()
    {
        $this->service = new Service();

        return Review::class;
    }

    public function index($dataTable)
    {
        $services = $this->service->get();

        return $dataTable->render('backend.review.index', ['services' => $services]);
    }

    public function listNotification()
    {
        return view('backend.push-notification.list');
    }

    public function store($request) {}

    public function edit($attributes, $id) {}

    public function update($request, $id) {}

    public function isPrimary($id) {}

    public function destroy($id)
    {
        DB::beginTransaction();
        try {

            $review = $this->model->findOrFail($id);
            $review->destroy($id);
            DB::commit();

            return redirect()->route('backend.reviews')->with('message', 'Review Deleted Successfully');
        } catch (Exception $e) {

            DB::rollback();

            return back()->with('error', $e->getMessage());
        }
    }

    public function deleteRows($request)
    {
        try {
            foreach ($request->id as $row => $key) {
                $review = $this->model::find($request->id[$row]);
                $review->delete();
            }

            return redirect()->route('backend.reviews')->with('message', 'Reviews Deleted Successfully');
        } catch (\Exception $e) {
            return back()->with('error', $e->getMessage());
        }
    }
}
