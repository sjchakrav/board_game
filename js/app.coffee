(($) ->
  app = {
    content:
      #HR/ORIENTATION/FORMS => SECTION 1
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
        content: '<h1>RMS Acronyms:<h1><br><br><a href="http://insiderms.rms.com/about-rms/Documents/Style%20Guide%20for%20Written%20Communications.pdf#search=acronyms">Full Acronyms List</a>
        '
        #SECTION 2 TRAINING
      LearningCenter:
        content:'<h1>RMS Learning Center:</h1><br><br><a href="http://caitepsys1/learnsso">Learning Center</a>
        '
      Books24x7:
        content:'<h1>Books24x7:</h1><br><br><a href="http://www.books24x7.com/">Books24x7</a>
        '
      CDToolkit:
        content:'<h1>Career Development Toolkit:</h1><br><br><a href="https://rms.okta.com/home/riskmanagementsolutionsinc_careerdevelopmenttoolkit_1/0oavmvt82iNDYGGKSMAF/22273?fromHome=true">Career Development Toolkit</a>
        '
      CCRA:
        content:'<h1>CCRA:</h1><br><br><a href="http://intranet.rms.com/Documents/CCRA_Brochure_FINAL_2014.pdf#search=ccra">CCRA</a>
        '
      NewGrad: 
        content:'<h1>New Grad Training:</h1><br><br><a href="#">Placeholder</a>
        '

        #SECTION 3 LOCATIONS AND FACILITIES


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