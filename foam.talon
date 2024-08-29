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

line glue:
    edit.line_start()
    edit.delete()
    sleep(200ms)
    insert(" ")

file linting:
    user.vscode("markdownlint.fixAll")

Linting toggle:
    user.vscode("markdownlint.toggleLinting")

table add:
    #user.vscode("md-shortcut.addTable")
    user.vscode("md-shortcut.addTableWithHeader")

#Commands relating to notes

note title this:
    text = edit.selected_text()
    user.vscode("foam-vscode.create-note")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")

note bilateral this:
    text = edit.selected_text()
    user.vscode("foam-vscode.create-note-from-template")
    sleep(200ms)
    insert("bilateral")
    sleep(200ms)
    key('enter')
    sleep(200ms)
    insert(text)

note group this:
    #create new group note on the selected text
    text = edit.selected_text()
    user.vscode("foam-vscode.create-note-from-template")
    sleep(200ms)
    insert("group")
    sleep(200ms)
    key('enter')
    sleep(200ms)
    insert(text)

# note weekly {user.my_note_groups} :
#     insert(user.formatted_text("weekly-cooking{my_note_groups}", 'DASH_SEPARATED'))
#     sleep(200ms)
#     edit.select_line()
#     sleep(200ms)
#     text = edit.selected_text()
# #of    #create new group note on the selected text
#     user.vscode("foam-vscode.create-note-from-template")
#     sleep(200ms)
#     insert("group")
#     sleep(200ms)
#     key('enter')
#     sleep(200ms)
#     insert(text)

note daily:
    user.vscode("foam-vscode.open-daily-note-for-date")

note journal:
    #Create a daily journaling note.separate from the daily notes page    
    user.vscode("foam-vscode.create-note-from-template")
    sleep(200ms)
    insert('journal')
    sleep(400ms)
    key('enter')
    #insert('daily journal')
    #sleep(200ms)
    #key('enter')

note link copy:
    user.vscode("fileutils.copyFileName")
    text = clip.text()
    clip.set_text("[[{text}]]")

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

go journal:
    user.vscode("workbench.action.quickOpen")
    sleep(200ms)
    insert("jd.")
    insert(user.time_format_utc("%Y-%m-%d"))
    sleep(200ms)
    key(enter)


things add:
    edit.select_line()
    edit.copy()
    sleep(300ms)
    user.switcher_focus('things')
    sleep(300ms)
    key(cmd-n)
    sleep(300ms)
    edit.paste()

hash tag {user.my_note_groups} :
    insert("#")
    sleep(200ms)
    insert(user.formatted_text("{my_note_groups}", 'DASH_SEPARATED'))

project {user.project_names}:
    insert("#")
    sleep(200ms)
    insert(project_names)

save and commit:
    user.vscode("workbench.action.files.saveAll")
    sleep(500ms)
    user.vscode("workbench.action.terminal.new")
    sleep(500ms)
    insert("git add . && git commit -m \"Misc changes\"")
    key(enter)