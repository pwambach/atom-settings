# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

Fn =
  moveCursor: (c) ->
    e = atom.workspace.getActiveTextEditor()
    p = e.getCursorScreenPosition()
    p.row += c
    e.setCursorScreenPosition(p)

atom.commands.add 'atom-text-editor', 'custom:move-ten-up', Fn.moveCursor.bind(@, -10);
atom.commands.add 'atom-text-editor', 'custom:move-ten-down', Fn.moveCursor.bind(@, 10);
