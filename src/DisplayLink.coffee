
emptyFunction = require "emptyFunction"
assertType = require "assertType"

module.exports =

  addListener: (listener) ->
    assertType listener, Function
    listeners.push listener
    return listener

  removeListener: (listener) ->
    assertType listener, Function
    position = listeners.indexOf listener
    if position >= 0
      listeners.splice position, 1
      return

#
# Internal
#

index = -1
listeners = []

tick = ->

  if length = listeners.length
    while ++index < length
      (listeners[index] or emptyFunction)()
    index = -1

  requestAnimationFrame tick
  return

# Kick off the loop.
requestAnimationFrame tick
