<?php

namespace Modules\Notice\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    protected $fillable = [];

    public function user()
    {
        $this->belongsTo(User::class,'user_id');
        
    }
}
