os: mac
and app.bundle: com.microsoft.VSCode
title: /foam-brain/i
-

tag(): user.outline

#to do tree functionality

tree toggle:
    user.vscode("workbench.view.extension.todo-tree-container")

tree filter:
    user.vscode("todo-tree.filter")

tree include {user.my_note_groups}:
    user.vscode("todo-tree.filter")
    sleep(400ms)
    insert(user.my_note_groups)

tree exclude {user.my_note_groups}:
    user.vscode("todo-tree.filter")
    sleep(400ms)
    insert("^((?!") 
    insert(user.my_note_groups)
    insert( ").)*$")

tree change {user.my_task_list}:
    key(cmd-1)
    edit.line_start()
    sleep(200ms)
    edit.extend_right()
    edit.extend_right()
    edit.extend_right()
    sleep(200ms)
    edit.delete()
    sleep(200ms)
    insert(user.my_task_list)
    sleep(200ms)
    key(cmd-0)

tree north:
    key(cmd-0)
    sleep(100ms)
    key(up)
    sleep(100ms)
    key(space)
    sleep(100ms)
    key(cmd-1)

tree south:
    key(cmd-0)
    sleep(100ms)
    key(down)
    sleep(100ms)
    key(space)
    sleep(100ms)
    key(cmd-1)

tree delete:
    key(cmd-1)
    sleep(200ms)
    edit.delete_line()
    key(cmd-0)



file linting:
    user.vscode("markdownlint.fixAll")


table add:
    #user.vscode("md-shortcut.addTable")
    user.vscode("md-shortcut.addTableWithHeader")

#Commands relating to notes

note about [<user.text>] [over]:
    user.vscode("foam-vscode.create-note")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")

note title this:
    text = edit.selected_text()
    user.vscode("foam-vscode.create-note")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")

note move this:
    edit.cut()
    user.vscode("foam-vscode.create-note")
    sleep(200ms)

note daily:
    user.vscode("foam-vscode.open-daily-note-for-date")

note template {user.my_note_groups}:
    user.vscode("foam-vscode.create-note-from-template")
    sleep(200ms)
    insert(user.my_note_groups)
    sleep(200ms)
    key('enter')

note link copy:
    user.vscode("fileutils.copyFileName")
    text = clip.text()
    clip.set_text("[[{text}]]")

note bilateral {user.my_note_groups}:
    user.vscode("foam-vscode.create-note-from-template")
    sleep(200ms)
    insert("bilateral")
    sleep(200ms)
    key('enter')
    sleep(200ms)
    insert(user.my_note_groups)

reveal preview:
    user.vscode("vscode-revealjs.showRevealJS")

link follow:
    user.vscode("editor.action.openLink")

preview scroll:
    user.vscode("markdown.preview.scrollPreviewWithEditor")

task [new] {user.my_task_list}:
    edit.line_start()
    sleep(200ms)
    insert(user.my_task_list)
    sleep(200ms)
    edit.line_end()

    
task change {user.my_task_list}:
    edit.line_start()
    sleep(200ms)
    # edit.delete()
    # edit.extend_word_right()
    edit.extend_right()
    edit.extend_right()
    edit.extend_right()
    edit.extend_right()
    sleep(200ms)
    edit.delete()
    sleep(200ms)
    insert(user.my_task_list)

line {user.my_task_list} {user.my_note_groups}:
    edit.line_start()
    sleep(200ms)
    insert(user.my_task_list)
    sleep(200ms)
    edit.line_end()    
    sleep(200ms)
    insert(" #")
    insert(user.my_note_groups)


# bar tag ex:
#     user.vscode("foam-vscode.tags-explorer.focus")

# scout tagging: {user.my_note_groups} :
#     user.vscode("search.action.openEditor")
#     sleep(200ms)
#     insert ("{my_note_groups}")

scout header all:
    # lookup a note using only text prefixed by one or more hash
    key(cmd-t)
   
scout heading here :
    # jump to a header ajlikein the current note
    key(cmd-shift-o)


image paste :
    user.vscode("extension.pasteImage")


at con {user.my_note_groups}: 
    insert("@")
    sleep(200ms)
    insert(user.my_note_groups)
    sleep(200ms)
    key('enter')

go daily:
    user.vscode("workbench.action.quickOpen")
    sleep(100ms)
    insert("dn.")
    insert(user.time_format_utc("%Y-%m-%d"))
    sleep(200ms)
    key(enter)

# go yesterday:
#     user.vscode("workbench.action.quickOpen")
#     sleep(100ms)
#     insert("dn.")
#     insert(user.time_format_yesterday ("%Y-%m-%d"))
#     sleep(200ms)
#     key(enter)

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
    
# # (note) ref copy:
# #     user.vscode("dendron.copyNoteRef")
# #(note) ref copy:
#     user.vscode("dendron.copyNoteRef")
# # (note) ref copy:
# #     user.vscode("dendron.copyNoteRef")
# (note) ref copy:
#     user.vscode("dendron.copyNoteRef")
# # (note) ref copy:
# #     user.vscode("dendron.copyNoteRef")
# (note) ref copy:
#     user.vscode("dendron.copyNoteRef")
# # (note) ref copy:
# #     user.vscode("dendron.copyNoteRef")
# (note) ref copy:
#     #user.vscode("dendron.copyNoteRef")



# note daily:
#     user.vscode("dendron.createDailyJournalNote")

# r meeting:
#     user.vscode("dendron.createMeetingNote")

# note journal:
#     user.vscode("dendron.createJournalNote")



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