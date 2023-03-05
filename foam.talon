os: mac
and app.bundle: com.microsoft.VSCode
title: /foam-brain/i
-

note make [<user.text>] [halt]:
    user.vscode("foam-vscode.create-note")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")

note move this:
    edit.cut()
    user.vscode("foam-vscode.create-note")
    sleep(200ms)

link follow:
    user.vscode("editor.action.openLink")



at con {user.my_note_groups}: 
    insert("@")
    insert(user.my_note_groups)
    insert('enter')


# note that:
#     #turn that selected text into a note
#     text = edit.selected_text()
#     edit.delete()
#     "[[{text}]]"
#     key(ctrl-enter)
    
# note reveal:
#     user.vscode("editor.action.revealDefinition")

# note look:
#     #look up or create a Dendron note
#     user.vscode("dendron.lookupNote")
#     # key(cmd-l)
    
# note go:
#     #how do you click through a note hyperlink into the underlying note
#     user.vscode("dendron.gotoNote")
    
# (note) link paste:
#     user.vscode("dendron.pasteLink")

# (note) link copy:
#     user.vscode("dendron.copyNoteURL")

# note rename:
#     user.vscode("dendron.renameNote")
    
# (note) ref copy:
#     user.vscode("dendron.copyNoteRef")



# note daily:
#     user.vscode("dendron.createDailyJournalNote")

# note meeting:
#     user.vscode("dendron.createMeetingNote")

# note journal:
#     user.vscode("dendron.createJournalNote")

# hunt header:
#     # lookup a note using only text prefixed by one or more hash
#     key(cmd-t)

# trash it:
#     user.vscode("dendron.delete")

# bar tree view:
#     user.vscode("dendron.treeView.focus")

# (header | outline) jump:
#     # jump to a header in the current note
#     key(cmd-shift-o)

# template apply:
#     #apply a template to the current note
#     user.vscode("dendron.applyTemplate")   

# date insert:
#     #insert a date in the Dendron format
#     insert(user.time_format_utc("%Y.%m.%d"))
  
# # daily child:
# #     #prefix the selected text with daily journal and create new note
# #     text = edit.selected_text()
# #     insert("[[daily.journal.")
# #     # insert(user.time_format_utc("%Y.%m.%d") 
# #     insert(user.time_format_utc("%Y.%m.%d"))
# #     key('.')
# #     insert(text or "")
# #     insert("]]")
# # #make child:
# # #user.vscode("dendron.copyNoteRef")
# # play file:
# #     user.edit_text_file('//Users/paul.jones/.talon/recordings/kebab kickoff for the loans-p7AUVxZg.flac')
# #     sleep(3000ms)
# #show
# # daily go:
# #     #go to my daily notes in Dendron
# #     user.vscode("dendron.lookupNote")
# #     #user.vscode("workbench.action.switchWindow")
# #     sleep(100ms)
# #     insert("daily.journal.")
# #     insert(user.time_format_utc("%Y.%m.%d"))
# #     sleep(100ms)
# #     key(enter)

# (preview it)|(note preview):
#          user.vscode("dendron.togglePreview")