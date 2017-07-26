$(document).ready(function () {
    $('#datePicker')
        .datepicker({
            autoclose: true,
            format: 'mm/dd/yyyy',
            todayHighlight: true
        })
        .on('blur', function (e) {

        });
});