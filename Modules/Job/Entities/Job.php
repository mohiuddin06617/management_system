<?php

namespace Modules\Job\Entities;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Job extends Model {

    use SoftDeletes;

    protected $table = 'jobs';

    protected $fillable = ['title', 'description', 'status', 'create_by'];

    public function creator() {
        return $this->belongsTo( User::class, 'create_by' );
    }

}
