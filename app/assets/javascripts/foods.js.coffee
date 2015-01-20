jQuery ->
  $(".acids").on "click", "button", ->
    $(this).closest("button").remove()

jQuery ->
  $('#search').autocomplete
    source: "/search_suggestions"
