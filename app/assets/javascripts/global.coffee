@ready = ->
  bReady()

$(document).ready(ready)
$(document)
  .on('turbolinks:load', ready)
  .on('click', '[data-object~="suppress-click"]', -> false)