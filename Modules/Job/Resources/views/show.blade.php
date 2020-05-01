<div class="card">
    <div class="card-header">
        <h4>{{__('Department Name')}} : {{$department->name}}</h4>
    </div>
    <div class="card-body">
        {{__('Description')}} : {{$department->description}}
        <hr>
    </div>
    <div class="card-footer">
        Footer Card
    </div>
</div>


<div class="form-group">
    <label>{{__('Department Name')}}</label>
    <div class="input-group">
        <div class="input-group-prepend">
            <div class="input-group-text">
                <i class="fas fa-building"></i>
            </div>
        </div>
        <input readonly type="text" class="form-control" value="{{$department->name}}">
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__('Icon')}}</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <i class="fas fa-marker"></i>
                    </div>
                </div>
                <input type="text" class="form-control" value="{{$department->logo_icon}}">
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__('Status')}}</label>
            <div class="badge  {{( ( $department->status == 'Active' ) ? 'badge-success' : 'badge-danger' ) }}">
                {{$department->status }}</div>
        </div>
    </div>
</div>

<div class="form-group">
    <label>{{__('Description')}}</label>
    <div class="input-group">
        <div class="input-group-prepend">
            <div class="input-group-text">
                <i class="fas fa-info"></i>
            </div>
        </div>
        <input type="text" class="form-control" value="{{$department->description}}" placeholder="{{__('Description')}}"
            id="description" name="description">
    </div>
    <div id="description_message"></div>
</div>