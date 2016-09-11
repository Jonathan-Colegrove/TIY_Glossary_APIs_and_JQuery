$(document).ready(function() {

  $(".find-definitions").on("click", function() {
    // Get the term from the form
    var term = $("#term_name").val()
    $.getScript({ url: "/suggestions/show_suggestion", data: { term: term } })
  })

  $(".found-definitions").on("click", "li", function() {
    var selected_def = $(this).text()
    $('#term_definition').val(selected_def)
  })
})
