
Template.modalTest.events
  
  'click #success': (e, tmpl) ->
    toast("<i class='mdi-action-done left'></i>Success", 3000, 'blue')


  'click #info': (e, tmpl) ->
    toast("<i class='mdi-action-info left'></i>Information", 3000, 'green')


  'click #warning': (e, tmpl) ->
    toast("<i class='mdi-alert-warning left'></i>Warning!", 3000, 'orange')


  'click #error': (e, tmpl) ->
    toast("<i class='mdi-alert-error left'></i>Error!", 3000, 'red')


  'click #messageTest': (e, tmpl) ->
    console.log('messageTest')
    MaterializeModal.message
      message: 'Message Test'
  

  'click #alertTest': (e, tmpl) ->
    console.log('alertTest')
    MaterializeModal.alert
      title: 'Alert <i>Test</i>'
      message: 'There was an alert',
      title: 'Alert <i>Test</i>'
  

  'click #errorTest': (e, tmpl) ->
    console.log('errorTest')
    MaterializeModal.error
      message: 'There was an error!'
    

  'click #confirmTest': ->
    console.log('confirmTest')
    MaterializeModal.confirm 
      message: 'Do it?', 
      callback: (yesNo) ->
        if yesNo
          toast("<i class='mdi-action-done left'></i>Doing it!", 3000, 'green')
        else
          toast("<i class='mdi-av-not-interested left'></i>Not doing it!", 3000, 'blue')


  'click #promptTest': ->
    console.log('promptTest')
    MaterializeModal.prompt 
      message: 'Enter something', 
      callback: (yesNo, rtn, event) ->
        if yesNo
          if not rtn
            toast("<i class='mdi-alert-warning left'></i>You did not enter anything!", 3000, 'red')
          else
            toast("<i class='mdi-action-done left'></i>Entered: #{rtn}", 3000, 'green')
        else
          toast("<i class='mdi-av-not-interested left'></i>Cancelled", 3000, 'blue')


  'click #formTest': ->
    console.log('formTest')
    MaterializeModal.form 
      bodyTemplate: 'testForm'
      callback: (yesNo, rtn, event) ->
        if yesNo
          if not rtn
            toast("<i class='mdi-alert-warning left'></i>You did not enter anything!", 3000, 'red')
          else
            toast("<i class='mdi-action-done left'></i>Entered: #{rtn.firstname}, #{rtn.telephone}, #{rtn.checkmark}")
        else
          toast("<i class='mdi-av-not-interested left'></i>Cancelled", 3000, 'blue')

