<form action="{{route('department.update',$department->id)}}">
    @csrf
    @method('PUT')

    <div class="form-group">
        <label>{{__('Department Name')}}</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-building"></i>
                </div>
            </div>
            <input type="text" class="form-control" value="{{$department->name}}"
                placeholder="{{__('Department Name')}}" id="name" name="name">
            <div id="name_message"></div>
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
                    <input type="text" class="form-control" value="{{$department->logo_icon}}"
                        placeholder="{{__('Icon')}}" id="logo_icon" name="logo_icon">
                </div>
                <div id="logo_icon_message"></div>
            </div>
        </div>
        <div class="col-md-6">

            <div class="form-group">
                <label>{{__('Status')}}</label>
                <select id="status" name="status" class="form-control select2">
                    @php
                    $status = ['Active','Inactive'];
                    @endphp
                    @foreach ($status as $item)
                    <option {{($department->status==$item)?'selected':''}} value="{{$item}}">{{$item}}</option>
                    @endforeach
                </select>
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
            <input type="text" class="form-control" value="{{$department->description}}"
                placeholder="{{__('Description')}}" id="description" name="description">
        </div>
        <div id="description_message"></div>
    </div>
</form>