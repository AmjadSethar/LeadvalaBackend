<?php

namespace App\Repositories\API;

use App\Exceptions\ExceptionHandler;
use App\Models\Banner;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Prettus\Repository\Eloquent\BaseRepository;

class BannerRepository extends BaseRepository
{
    protected $fieldSearchable = [
        'title' => 'like',
        'hasSubCategories.title' => 'like',
    ];

    public function model()
    {
        return Banner::class;
    }

    public function index(Request $request)
    {
        try {
            $query = $this->model->where('status', true);

            if ($request->banner_type) {
                $query->where('is_offer', true);
            } else {
                $query->where('is_offer', false);
            }

            $paginate = $request->input('paginate', $query->count());
            $banners = $query->with(['media'])->latest('created_at')->paginate($paginate);


            return $banners;
        } catch (Exception $e) {

            return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function show($id)
    {
        try {
            $item = $this->model->with('media')->findOrFail($id);

            return response()->json(['success' => true, 'data' => $item]);
        } catch (Exception $e) {

            return response()->json(['success' => false, 'message' => $e->getMessage()], 404);
        }
    }

    public function store($request)
    {
        DB::beginTransaction();
        try {
            $banner = $this->model->create([
                'type' => $request->type,
                'related_id' => $request->related_id,
                'status' => $request->status,
            ]);

            if ($request->images) {
                $images = $request->images;
                foreach ($images as $image) {
                    $banner->addMedia($image)->toMediaCollection('image');
                }
            }
            DB::commit();

            return response()->json([
                'message' => __('static.banner.created_successfully'),
                'banner' => $banner,
            ]);
        } catch (Exception $e) {

            throw new ExceptionHandler($e->getMessage(), $e->getCode());
        }
    }
}
