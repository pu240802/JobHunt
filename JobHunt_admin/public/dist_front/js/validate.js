$(document).ready(function() {
    $("#date").on("blur", function() {
        var dateString = $(this).val();
        if (!isValidDate(dateString)) {
            $("#date-error").text("Please enter a valid date in the format 'YYYY-MM-DD'.");
        } else {
            $("#date-error").text("");
        }
    });
});

function isValidDate(dateString) {
    var regex = /^\d{4}-\d{2}-\d{2}$/;
    return regex.test(dateString);
}
