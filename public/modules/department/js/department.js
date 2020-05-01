$(document).ready(function () {
    var token = document.head.querySelector('meta[name="csrf-token"]');
    window.axios.defaults.headers.common["X-CSRF-TOKEN"] = token.content;

    var departmentDataTable;
    var dtblObj = $("#department-data-table");

    if (dtblObj.length == 1) {
        let dataUrl = dtblObj.data("url");
        departmentDataTable = dtblObj.DataTable({
            responsive: true,
            processing: true,
            serverSide: true,
            ajax: dataUrl,
            columns: [{
                    data: "DT_RowIndex",
                    name: "DT_RowIndex"
                },
                {
                    data: "name",
                    name: "name"
                },
                {
                    data: "description",
                    name: "description"
                },
                {
                    data: "status",
                    name: "status"
                },
                {
                    data: "create_by",
                    name: "create_by"
                },
                {
                    data: "created_at",
                    name: "created_at"
                },
                {
                    data: "action",
                    name: "action",
                    orderable: false,
                    searchable: false
                },
            ],
        });
    }

    let modalProperties = {
        actionUrl: "",
        actionType: "",
        methodType: "POST",
        title: "Create New Department",
        buttonLabel: "Save",
    };

    let modal = $("#productiveModal");

    function renderModal() {
        $(modal).find(".modal-title").html(modalProperties.title);
        $(modal).find("#btn-modal-save").html(modalProperties.buttonLabel);
        $(modal).find(".modal-body").html("Loading..");
    }

    function loadModal() {
        renderModal();
        $(modal).modal();
        $(modal).on("shown.bs.modal", function (e) {
            axios
                .get(modalProperties.actionUrl)
                .then(function (response) {
                    if (response.status == 200) {
                        $(modal).find(".modal-body").html(response.data);
                    }
                })
                .catch(function (error) {
                    console.log(error);
                })
                .then(function () {
                    // always executed
                });
        });
    }

    $("body").on("click", "#btn-new-department", function (ev) {
        ev.preventDefault();
        modalProperties.actionUrl = $(this).data("create");
        modalProperties.actionType = "create";
        modalProperties.methodType = "POST";
        loadModal();
    });

    $("body").on("click", ".btn-edit-department", function (ev) {
        ev.preventDefault();
        //alert("ok");
        modalProperties.actionUrl = $(this).data("edit");
        modalProperties.actionType = "edit";
        modalProperties.title = "Edit Department";
        modalProperties.buttonLabel = "Update";
        modalProperties.methodType = "PATCH";
        loadModal();
    });

    $("body").on("click", "#btn-modal-save", function (ev) {
        ev.preventDefault();

        $(modal).find("#name").removeClass("is-invalid");
        $(modal).find("#name_mesage").removeClass();
        $(modal).find("#name_message").html("");

        $(modal).find("#btn-modal-save").html("Processing..");

        let actionUrl = $(modal).find("form").attr("action");

        var deptdata = new FormData();
        deptdata.set("name", $(modal).find("#name").val());
        deptdata.set("logo_icon", $(modal).find("#logo_icon").val());
        deptdata.set("description", $(modal).find("#description").val());

        //console.log($(modal).find("#name").val());

        axios({
                method: modalProperties.methodType,
                //_method: "patch",
                url: actionUrl,
                data: deptdata,
                config: {
                    headers: {
                        "Content-Type": "multipart/form-data",
                    },
                },
            })
            .then(function (response) {
                iziToast.success({
                    title: "Success",
                    message: response.data.message,
                    position: "topRight",
                });
                departmentDataTable.draw();
                $(modal).modal("hide");
            })
            .catch(function (error) {
                if (error.response)
                    if (typeof error.response.data.errors.name === "undefined") {
                        $(modal).find("#name").addClass("is-valid");
                    } else {
                        $(modal).find("#name").addClass("is-invalid");
                        $(modal)
                            .find("#name_message")
                            .html(error.response.data.errors.name);
                        $(modal).find("#name_message").addClass("invalid-feedback");
                    }
            })
            .then(function () {
                $(modal).find("#btn-modal-save").html(modalProperties.buttonLabel);
            });
    });
});