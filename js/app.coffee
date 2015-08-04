(($) ->
  app = {
    content:
      dayOneWelcome:
        content: '<h1>What do you know about RMS?</h1><p><center><iframe width="420" height="315"
src="http://www.youtube.com/embed/JS_DjKsx7dU?"></center>
</iframe></p>'
      W4:
        content: '<h1>W4 Forms</h1><p><center><</center>'
    modal: (e) ->
      $this = $(e.currentTarget)
      sectionId = $this.data('id')

      $('.modal-content').html(app.content[sectionId].content)
      $('.modal').show()

      $('.modal'). on 'click', (e) ->
        $('.modal').hide()
  }

  $(document).ready ->
    $('section').on 'click', app.modal


  ) jQuery