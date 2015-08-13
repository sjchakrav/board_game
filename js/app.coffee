(($) ->
  app = {
    content:
      dayOneWelcome:
        content: '<h1>What do you know about RMS?</h1><br><center><iframe width="420" height="315"
src="http://www.youtube.com/embed/JS_DjKsx7dU?"></center>
</iframe>'
      PSF:
        content: '<h1>People Strategy Forms</h1><br><br><a href="http://insiderms.rms.com/departments/human-resources/HR%20Documents/US_W-4_Form_2012.pdf">W4 Forms</a><br><br>
        <a href="http://insiderms.rms.com/departments/human-resources/HR%20Documents/US_Benefits_Enrollment.pdf">Benefits Enrollment</a><br><br>'
      BusinessCards:
        content: '<h1>Need New Business Cards?</h1><br><br><a href="http://insiderms.rms.com/departments/human-resources/Documents/RMS_OnDemand_Branded_Item_Request_Portal_Update.pdf">New Business Cards</a>
        '
      WritingStyleGuide:
        content: '<h1>Corporate Writing Style Guide</h1><br><br><a href="http://insiderms.rms.com/departments/GoToMarket/Documents/Guides/Corporate%20Writing%20Style%20Guidelines.pdf">Writing Style Guide</a>
        '
      Acronyms:
        content: '<h1>RMS Acronyms:<h1><br><br><a href="http://insiderms.rms.com/about-rms/Documents/Style%20Guide%20for%20Written%20Communications.pdf#search=acronyms">Acronyms List</a>
        '
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