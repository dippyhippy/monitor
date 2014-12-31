noflo = require 'noflo'
imap = require 'imap'

exports.getComponent = ->
  c = new noflo.Component
  c.inPorts.add 'in', (event, payload) ->
    return unless event is 'data'
    # Do something with the packet, then
    c.outPorts.out.send payload
  c.outPorts.add 'out'
  c