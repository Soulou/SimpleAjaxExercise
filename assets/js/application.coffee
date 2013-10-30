# We wait until the document is charged
$ ->
  $("#name").on "keyup", ->
    url = "autocomplete?action=complete&id=" + escape(this.value)
    $.get url, (data, status, xhr) ->
      $("#autofill").html "<ul>" +
        _.map(data, (c) ->
          "<li>" + c.firstName + " " + c.lastName + " " + c.style + "</li>"
        ).join("") +
        "</ul>"


