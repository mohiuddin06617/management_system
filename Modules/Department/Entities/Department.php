<?php

namespace Modules\Department\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Department extends Model {
    use SoftDeletes;

    protected $table = 'departments';

    protected $fillable = ['name', 'description', 'logo_icon', 'status', 'create_by'];

    public function creator() {
        return $this->belongsTo( User::class, 'create_by' );
    }

}
