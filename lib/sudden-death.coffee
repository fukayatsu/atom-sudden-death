module.exports =
  activate: ->
    atom.workspaceView.command "sudden-death:convert", => @convert()

  convert: ->
    SuddenDeath = require("sudden-death")

    editor    = atom.workspace.activePaneItem
    selection = editor.getSelection()

    suddenDeath = new SuddenDeath(selection.getText())
    selection.insertText(suddenDeath.say())
