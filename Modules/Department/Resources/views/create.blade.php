<form method="POST" action="{{route('department.store')}}">
    {{--        <p>This login form is taken from elements with <code>#modal-login-part</code> id.</p>--}}
    <div class="form-group">
        <label>Department Name</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-building"></i>
                </div>
            </div>
            <input type="text" class="form-control" placeholder="Department Name" id="name" name="depratment_name">
            <div id="name_message"></div>
        </div>

    </div>
    <div class="form-group">
        <label>Icon</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="fas fa-marker"></i>
                </div>
            </div>
            <input type="text" class="form-control" placeholder="Icon" id="logo_icon" name="logo_icon">
        </div>
        <div id="logo_icon_message"></div>
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