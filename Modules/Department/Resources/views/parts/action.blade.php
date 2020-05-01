<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">

    {{-- <button type="button" class="btn btn-success btn-icon btn-department-details" data-toggle="tooltip"
         data-placement="top" title="" data-original-title="Details" data-id="' . $row->id . '"
         data-details="' . route( 'department.show', $row->id ) . '">
         <i class="fas fa-info-circle"></i>
     </button> --}}


    <button type="button" class="btn btn-warning btn-icon btn-edit-department" data-toggle="tooltip"
        data-placement="top" title="" data-original-title="Edit"
        data-edit="' . route( 'department.edit', $row->id ) . '">
        <i class="far fa-edit"></i>
    </button>
    <button type="button" class="btn btn-danger btn-icon btn-delete-department" data-toggle="tooltip"
        data-placement="top" title="" data-original-title="Delete" data-id="' . $row->id . '"
        data-delete="' . route( 'department.destroy', $row->id ) . '">
        <i class="fas fa-trash"></i></i>
    </button>
</div>