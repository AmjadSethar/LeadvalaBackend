<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Service;
use App\Models\User;
use App\Repositories\API\ProviderRepository;
use Illuminate\Http\Request;
use Exception;

class Category1Controller extends Controller
{
    protected $repository;

    public function __construct(ProviderRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Retrieve all categories, ordered by ID in descending order with pagination.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function categories(Request $request)
    {
        try {
            $categories = Category::orderBy('id', 'desc')
                ->paginate($request->paginate ?? 10); 

            return response()->json([
                'success' => true,
                'data' => $categories,
                'message' => 'Categories retrieved successfully',
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error retrieving categories: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Retrieve a category by its ID with related services and their associated users.
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function getCategoryById($id)
    {
        $category = Category::with('services.user')->find($id);

        if ($category) {
            return response()->json([
                'success' => true,
                'data' => $category,
                'message' => 'Category retrieved successfully',
            ], 200);
        }

        return response()->json([
            'success' => false,
            'message' => 'Category not found',
        ], 404);
    }

    /**
     * Retrieve providers by category.
     *
     * This method retrieves providers that are associated with a specific category.
     * Then, it queries the providers by the category ID and returns the result in a paginated response.
     * 
     * @param Request $request
     * @param int $category_id
     * @return \Illuminate\Http\JsonResponse
     */
    public function getProvidersByCategory(Request $request, $category_id)
    {
        if (!$category_id) {
            return response()->json([
                'success' => false,
                'message' => 'Category ID is required',
            ], 400);
        }

        $category = Category::find($category_id);
        if (!$category) {
            return response()->json([
                'success' => false,
                'message' => 'Category not found',
            ], 404);
        }

        try {
            $providers = $this->repository->role('provider')
                ->whereHas('services.categories', function ($query) use ($category_id) {
                    $query->where('category_id', $category_id);
                })
                ->with(['addresses', 'services','servicemans'])
                ->latest('created_at')
                ->paginate($request->paginate ?? 10); 

            return response()->json([
                'success' => true,
                'data' => $providers,
                'message' => 'Providers retrieved successfully',
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error retrieving providers: ' . $e->getMessage(),
            ], 500);
        }
    }
}
