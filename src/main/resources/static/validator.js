$(document).ready(function () {
    $('#registration_form').validator({
        delay: 600,
        html: false,
        // disable submit button if there's invalid form
        disable: true,
        focus: true,
        custom: {},
        errors: {
            match: 'Does not match',
            minlength: 'Password must be >8 characters',
            remote: 'Username exists'
        },
        // feedback CSS classes
        feedback: {
            success: 'glyphicon-ok',
            error: 'glyphicon-remove'
        }
    });
});