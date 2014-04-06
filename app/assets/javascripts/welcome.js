// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
    $("#search").submit(function(e) {
        e.preventDefault();
        $.post(
            "calendar/search",
            $(this).serialize(),
            function(data) {
                console.log(data);
            }
        );
    });
});