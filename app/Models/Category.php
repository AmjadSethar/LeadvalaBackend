<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Category extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia,Sluggable;

    public $fillable = [
        'title',
        'slug',
        'description',
        'parent_id',
        'meta_title',
        'meta_description',
        'type',
        'status',
        'created_by',
        'is_featured',
        'status',
        'commission',
        'commission_type',
        'category_type',
    ];

    protected $with = [
        'media',
        'zones',
    ];

    protected $casts = [
        'status' => 'integer',
        'parent_id' => 'integer',
        'created_by' => 'integer',
        'commission' => 'float',
    ];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title',
                'onUpdate' => true,
            ],
        ];
    }

    public function scopeWithOutParent($query)
    {
        return $query->whereNull('parent_id');
    }

    public static function getHierarchy(): array
    {
        return (new self())->getCategories();
    }

    private function getCategories(): array
    {
        $mainCategories = self::whereNull('parent_id')->get();
        foreach ($mainCategories as $category) {
            $this->categories[] = $category->toArray();
            $this->getParentCategories($category, 0);
        }

        return $this->categories;
    }

    private function getParentCategories($category, $level)
    {
        if ($subCategories = $category->hasSubCategories) {
            $level++;
            foreach ($subCategories as $subCategory) {
                $subCategory->title = str_repeat('- ', $level).$subCategory->title;
                $this->categories[] = $subCategory;
                $this->getParentCategories($subCategory, $level);
            }
        }
    }

    public function hasSubCategories()
    {
        return $this->hasMany($this, 'parent_id');
    }

    public function childs()
    {
        return $this->hasMany(Category::class, 'parent_id', 'id');
    }

    public function scopeActive($query, $value)
    {
        return $query->where('status', $value);
    }

    public function blogs(): BelongsToMany
    {
        return $this->belongsToMany(Blog::class, 'blog_categories');
    }

    public function services()
    {
        return $this->belongsToMany(Service::class, 'service_categories');
    }

    public function zones(): BelongsToMany
    {
        return $this->belongsToMany(Zone::class, 'category_zones', 'category_id');
    }
}
