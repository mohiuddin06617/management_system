<form method="POST" action="{{route('job.store')}}">
    {{--        <p>This login form is taken from elements with <code>#modal-login-part</code> id.</p>--}}
    <div class="form-group">
        <label>Job Title</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-heading"></i>
                </div>
            </div>
            <input type="text" class="form-control" placeholder="Job Title" id="title" name="title">
            <div id="title_message"></div>
        </div>

    </div>


    <div class="form-group">
        <label>Description</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-info"></i>
                </div>
            </div>
            <input type="text" class="form-control" placeholder="Description" id="description" name="description">
        </div>
        <div id="description_message"></div>
    </div>
</form>