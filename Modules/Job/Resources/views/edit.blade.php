<form action="{{route('job.update',$job->id)}}">
    @csrf
    @method('PUT')

    <div class="form-group">
        <label>{{__('Job Title')}}</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-heading"></i>
                </div>
            </div>
            <input type="text" class="form-control" value="{{$job->title}}" placeholder="{{__('Job Title')}}" id="title"
                name="title">
            <div id="title_message"></div>
        </div>

    </div>



    <div class="form-group">
        <label>{{__('Status')}}</label>
        <select id="status" name="status" class="form-control select2">
            @php
            $status = ['Active','Inactive'];
            @endphp
            @foreach ($status as $item)
            <option {{($job->status==$item)?'selected':''}} value="{{$item}}">{{$item}}</option>
            @endforeach
        </select>
    </div>


    <div class="form-group">
        <label>{{__('Description')}}</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-info"></i>
                </div>
            </div>
            <input type="text" class="form-control" value="{{$job->description}}" placeholder="{{__('Description')}}"
                id="description" name="description">
        </div>
        <div id="description_message"></div>
    </div>
</form>