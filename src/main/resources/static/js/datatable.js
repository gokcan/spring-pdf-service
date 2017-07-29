$(document).ready(function () {
    var table = $('#usersTable').DataTable({
        "sAjaxSource": "../users.json",
        "sAjaxDataProp": "",
        "paginate": false,
        "searching": false,
        "order": [[0, "asc"]],
        "aoColumns": [
            {"mData": "username"},
            {"mData": "email"},
            {
                "mData": "date",
                "render": function (data) {
                    return data.toString();
                }
            },
            {
                "mData": "sex",
                "render": function (data) {
                    if (data === "1") {
                        return "Male";
                    } else if (data === "0") {
                        return "Female";
                    } else {
                        return "N/A";
                    }
                }
            }
        ]
    });
});
