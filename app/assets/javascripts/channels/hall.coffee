App.hall = App.cable.subscriptions.create "HallChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.container').append(data['what'] + "\n")
