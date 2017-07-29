$(document).ready(function () {
    // noinspection JSUnusedLocalSymbols
    $('#datePicker')
        .datepicker({
            autoclose: true,
            format: 'mm/dd/yyyy',
            startDate: '01/01/1900',
            todayHighlight: true
        })
        .on('blur', function (e) {

        });
});