{View} = require 'atom'

module.exports =
class SuddenDeathView extends View
  @content: ->
    @div class: 'sudden-death overlay from-top', =>
      @div "The SuddenDeath package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "sudden-death:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "SuddenDeathView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
