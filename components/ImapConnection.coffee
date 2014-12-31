noflo = require 'noflo'
MyComponent = require '../lib/MyComponent'
Imap = require 'imap'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'fa-envelope-o'

  # Provide a description on component usage
  c.description = 'connect to an imap server'

  # Add input ports
  c.inPorts.add 'options',
    datatype: 'object'
    process: (event, options) ->
      # What to do when port receives a packet
      return unless event is 'data'

      # Check that we have been passed a valid options object
      return unless options.user and options.pass and options.host

      imap = new Imap options
      imap.once 'ready', () ->
        console.log 'ready!!'

      imap.connect()

  # Add output ports
  c.outPorts.add 'mail',
    datatype: 'string'

  # Finally return the component instance
  c
