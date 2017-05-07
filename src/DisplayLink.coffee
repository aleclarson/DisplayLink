
assertType = require "assertType"

module.exports =

  addListener: (listener) ->
    assertType listener, Function
    length += 1
    listeners.push listener
    return listener

  removeListener: (listener) ->
    assertType listener, Function
    position = listeners.indexOf listener
    if position >= 0
      length -= 1
      listeners.splice position, 1
      return

#
# Internal
#

index = -1
length = 0
listeners = []

tick = ->
  return unless length

  while ++index < length
    listeners[index]()

  index = -1
  requestAnimationFrame tick
  return

# Kick off the loop.
requestAnimationFrame tick
