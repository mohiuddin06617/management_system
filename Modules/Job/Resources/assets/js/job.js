$(document).ready(function () {

  var jobDataTable;
  var dtblObj = $("#job-data-table");

  if (dtblObj.length == 1) {
    let dataUrl = dtblObj.data("url");
    jobDataTable = dtblObj.DataTable({
      responsive: true,
      processing: true,
      serverSide: true,
      ajax: dataUrl,
      columns: [{
          data: "DT_RowIndex",
          name: "DT_RowIndex",
        },
        {
          data: "title",
          name: "title",
        },
        {
          data: "description",
          name: "description",
        },
        {
          data: "status",
          name: "status",
        },
        {
          data: "create_by",
          name: "create_by",
        },
        {
          data: "created_at",
          name: "created_at",
        },
        {
          data: "action",
          name: "action",
          orderable: false,
          searchable: false,
        },
      ],
    });
  }

  let modalProperties = {
    actionUrl: "",
    actionType: "Show",
    methodType: "POST",
    title: "Create New Job",
    buttonLabel: "Save",
  };

  let modal = $("#productiveModal");

  function renderModal() {
    $(modal).find(".modal-title").html(modalProperties.title);
    $(modal).find("#btn-modal-save").html(modalProperties.buttonLabel);
    $(modal).find(".modal-body").html("Loading..");

    if (modalProperties.actionType == "Show") {
      $(modal).find("#btn-modal-save").hide();
    } else {
      $(modal).find("#btn-modal-save").show();
    }
  }

  function arrayToJson(form) {
    var data = $(form).serializeArray();
    var indexed_array = {};

    $.map(data, function (n, i) {
      indexed_array[n["name"]] = n["value"];
    });

    return indexed_array;
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

            if (jQuery().select2) {
              $(".select2").select2();
            }
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

  $("body").on("click", "#btn-new-job", function (ev) {
    ev.preventDefault();
    modalProperties.actionUrl = $(this).data("create");
    modalProperties.methodType = "POST";
    modalProperties.actionType = "Create";
    modalProperties.buttonLabel = "Save";
    loadModal();
  });

  $("body").on("click", ".btn-edit-job", function (ev) {
    ev.preventDefault();
    modalProperties.actionUrl = $(this).data("edit");
    modalProperties.title = "Edit Job";
    modalProperties.buttonLabel = "Update";
    modalProperties.methodType = "PATCH";
    modalProperties.actionType = "Edit";
    loadModal();
  });

  $("body").on("click", ".btn-job-details", function (ev) {
    ev.preventDefault();
    modalProperties.actionUrl = $(this).data("details");
    modalProperties.title = "Job Details";
    // modalProperties.buttonLabel = "Update";
    modalProperties.actionType = "Show";
    loadModal();
  });

  $("body").on("click", ".btn-delete-job", function (ev) {
    ev.preventDefault();
    modalProperties.actionUrl = $(this).data("delete");
    //modalProperties.title = "Edit Job";
    modalProperties.buttonLabel = "Update";
    modalProperties.methodType = "DELETE";

    swal({
      title: "Are you sure?",
      text: "Once deleted, you will not be able to recover this Job!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    }).then((willDelete) => {
      if (willDelete) {
        axios({
            method: modalProperties.methodType,
            url: modalProperties.actionUrl,
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

            jobDataTable.draw(false);
          })
          .catch(function (error) {})
          .then(function () {});
      }
    });
  });

  $("body").on("click", "#btn-modal-save", function (ev) {
    ev.preventDefault();

    $(modal).find("#title").removeClass("is-invalid");
    $(modal).find("#title_mesage").removeClass();
    $(modal).find("#title_message").html("");

    $(modal).find("#btn-modal-save").html("Processing..");

    let actionUrl = $(modal).find("form").attr("action");
    var deptdata = arrayToJson($(modal).find("form"));

    if (modalProperties.actionType == "Edit") {
      deptdata.status = $(modal).find("#status").val();
    }

    axios({
        method: modalProperties.methodType,
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
        jobDataTable.draw(false);
        $(modal).modal("hide");
      })
      .catch(function (error) {
        if (error.response)
          if (typeof error.response.data.errors.title === "undefined") {
            $(modal).find("#title").addClass("is-valid");
          } else {
            $(modal).find("#title").addClass("is-invalid");
            $(modal)
              .find("#title_message")
              .html(error.response.data.errors.title);
            $(modal).find("#title_message").addClass("invalid-feedback");
          }
      })
      .then(function () {
        $(modal).find("#btn-modal-save").html(modalProperties.buttonLabel);
      });
  });
});