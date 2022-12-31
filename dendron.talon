os: mac
and app.bundle: com.microsoft.VSCode
title: /paul-vault/i
-

scratch it:
    #create a scratch note from within Dendron
    user.vscode("dendron.createScratchNote")
    sleep(300ms)
    key('enter')
    sleep(300ms)
    key('enter')
    sleep(200ms)
    edit.file_end()
    sleep(400ms)
    #paste the variable 'text' in
    user.paste("{text}")
    
preview it:
    user.vscode("dendron.togglePreview")
note that:
    text = edit.selected_text()
    edit.delete()
    "[[{text}]]"
    key(ctrl-enter)
note open:
    user.vscode("editor.action.revealDefinition")
date insert:
    #insert a date in the Dendron format
    insert(user.time_format_utc("%Y.%m.%d"))
  
daily child:
    #prefix the selected text with daily journal and create new note
    text = edit.selected_text()
    insert("[[daily.journal.")
    # insert(user.time_format_utc("%Y.%m.%d") 
    insert(user.time_format_utc("%Y.%m.%d"))
    key('.')
    insert(text or "")
    insert("]]")

daily go:
    #go to my daily notes in Dendron
    user.vscode("dendron.lookupNote")
    #user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    insert("daily.journal.")
    insert(user.time_format_utc("%Y.%m.%d"))
    sleep(100ms)
    key(enter)

note look:
    #look up or create a Dendron note
    user.vscode("dendron.lookupNote")
    # key(cmd-l)

ref copy:
    user.vscode("dendron.copyNoteRef")

daily make:
    user.vscode("dendron.createDailyJournalNote")

hunt header:
    # lookup a note using only text prefixed by one or more hash
    key(cmd-t)

bar tree view:
    user.vscode("dendron.treeView.open")

note rename:
    user.vscode("dendron.renameNote")

template apply:
    #apply a template to the current note
    user.vscode("dendron.applyTemplate")   
    

# dendron.copyNoteURL
# dendron.copyNoteRef 