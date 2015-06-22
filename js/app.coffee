(($) ->
  app = {
    content:
      dayOneWelcome:
        videoUrl: 'https://www.youtube.com/watch?v=Sppxdd4vvKY'
        content: '<h1>Awesome header</h1><p><</p>'
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
