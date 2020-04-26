/**
 *
 * You can write your JS code here, DO NOT touch the default style file
 * because it will make it harder for you to update.
 *
 */

"use strict";
$(document).ready(function () {
    if ($('.dataTable').length>0){
        $(".dataTable").dataTable({
            "columnDefs": [
                {
                    "targets": [2,3]
                }
            ]
        });
    }
});