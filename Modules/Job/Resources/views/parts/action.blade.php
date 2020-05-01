<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">

    {{-- <button type="button" class="btn btn-success btn-icon btn-job-details" data-toggle="tooltip"
         data-placement="top" title="" data-original-title="Details" data-id="' . $row->id . '"
         data-details="' . route( 'department.show', $row->id ) . '">
         <i class="fas fa-info-circle"></i>
     </button> --}}


    <button type="button" class="btn btn-success btn-icon btn-edit-job" data-toggle="tooltip" data-placement="top"
        title="" data-original-title="Edit" data-edit="{{route( 'job.edit', $row->id )}}">
        <i class="far fa-edit"></i>
    </button>
    <button type="button" class="btn btn-danger btn-icon btn-delete-job" data-toggle="tooltip" data-placement="top"
        title="" data-original-title="Delete" data-id="' . $row->id . '"
        data-delete="{{route('job.destroy', $row->id )}}">
        <i class="fas fa-trash"></i></i>
    </button>
</div>