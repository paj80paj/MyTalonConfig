
#anki
anki from talon: 
    #take selected talon command and comment and create a new cloze card
    text = edit.selected_text()
    print(text)
    user.switcher_focus('Anki')
    sleep(200ms)
    key(esc)
    sleep(200ms)
    key(a)
    sleep(200ms)
    key(cmd-n)
    sleep(200ms)
    "cloze"
    sleep(200ms)
    key('enter')
    sleep(300ms)
    user.paste("{text}")

    key('up')
    edit.select_line()
    
    key('shift-cmd-c')
    
    sleep(100ms)
    key('shift-cmd-t')  
    'talon'
    key('enter')   

    sleep(100ms)
    key('cmd-enter')

anki cloze:
    # open Anki and create a cloze card with the current text
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(200ms)
    key(esc)
    sleep(400ms)
    key(a)
    sleep(400ms)
    key(cmd-n)
    sleep(400ms)
    "cloze"
    sleep(200ms)
    key('enter')
    sleep(200ms)
    user.paste("{text}")

anki hunt (this|that):
    #in search for this text in Anki browser
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(200ms)
    key(esc)
    sleep(200ms)
    key(b)
    sleep(300ms)
    user.paste("{text}")
    key(enter)

anki hunt <user.text>:
    #in search for this text in Anki browser
    user.switcher_focus('Anki')
    sleep(300ms)
    key(esc)
    sleep(300ms)
    key(b)
    sleep(300ms)
    insert(text)
    key(enter)

#tally
tallow:
    user.switcher_focus('code')
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(talon or "")
    sleep(250ms)


# tally add word:
#     #how to I add a new word to my talon vocabulary from selection
#     text = edit.selected_text()
#     user.switcher_focus('code')
#     sleep(200ms)
#     user.vscode("workbench.action.switchWindow")
#     sleep(200ms)
#     "talon_user"
#     key('enter')
#     user.vscode("workbench.action.quickOpen")
#     sleep(300ms)
#     insert("additional_words")
#     sleep(200ms)
#     key('enter')
#     edit.extend_file_end()
#     edit.line_insert_down()
#     insert(text or "")

Label letters:
    key(alt-cmd-f)

tally rep word:
    #how to I add a new word to my the replace word list from selection
    text = edit.selected_text()
    user.switcher_focus('code')
    sleep(200ms)
    user.vscode("workbench.action.switchWindow")
    sleep(200ms)
    "talon_user"
    key('enter')
    user.vscode("workbench.action.quickOpen")
    sleep(200ms)
    insert("words_to_replace.csv")
    sleep(200ms)
    key('enter')
    edit.extend_file_end()
    edit.line_insert_down()
    insert(text or "")

tally my commands:
    #jump to paul's talon file
    user.switcher_focus('code')
    sleep(200ms)
    user.vscode("workbench.action.switchWindow")
    sleep(200ms)
    "talon_user"
    key('enter')
    sleep(200ms)
    user.vscode("workbench.action.quickOpen")
    sleep(200ms)
    insert("paulskeys.talon")
    sleep(200ms)
    key('enter')
    user.vscode("workbench.action.quickOpen")
    
tally hunt <user.text>:
    #search for the spoken text in the talon session 
    user.switcher_focus('code')
    sleep(100ms)
    user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    "talon_user"
    key('enter')
    user.find_everywhere(text)

dendhunt <user.text>:
    #search for the spoken text in the talon session 
    user.switcher_focus('code')
    sleep(100ms)
    user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    "paul-vault"
    key('enter')
    user.find_everywhere(text)

tally file hunt <user.text>:
    #search for specific filename in the talon session 
    user.switcher_focus('code')
    sleep(200ms)
    user.vscode("workbench.action.switchWindow")
    sleep(200ms)
    "talon_user"
    key('enter')
    user.vscode("workbench.action.quickOpen")
    sleep(200ms)
    insert(text or "")
    #sleep(50ms)
    # key('enter')

tally hunt (this|that):
    #search for the selected text in the talon session 
    text = edit.selected_text()
    user.switcher_focus('code')
    sleep(100ms)
    user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    "talon_user"
    key('enter')
    user.find_everywhere(text)

#Dendron
(code dendron)|(dendron go)|(dendo):
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(200ms)
    "paul-vault"
    key('enter')

foaming:
    user.switcher_focus('code')
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(foaming or "")
    sleep(250ms)

codify {user.code_session_names}:
    user.switcher_focus('code')
    sleep(50ms)
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(code_session_names or "")
    sleep(250ms)
    key('enter')

#Dendron
foam this:
    text = edit.selected_text()
#   edit.copy()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(400ms)
    "foam-brain"
    key('enter')
    sleep(200ms)
    user.vscode("foam-vscode.create-note")
    sleep(200ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")

#Dendron
foam insert:
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(400ms)
    "foam-brain"
    key('enter')
    sleep(300ms)
    edit.file_end()
    sleep(200ms)
    edit.line_end()
    sleep(200ms)
    key('enter')
    key('enter')
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")
    sleep(200ms)
    sleep(200ms)
    key(cmd-tab:1) 
#    key(cmd-`:1)    

foam make [<user.text>] [halt]:
    user.vscode("foam-vscode.create-note")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")


Dendatch [that]:
    #create a scratch note in Dendron using these selected text
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(200ms)
    "paul-vault"
    sleep(300ms)
    key('enter')
    user.vscode("dendron.createScratchNote")
    sleep(300ms)
    key('enter')
    sleep(300ms)
    key('enter')
    sleep(200ms)
    edit.file_end()
    sleep(200ms)
    #paste the variable 'text' in
    user.paste("{text}")

(Dendunt | Dendron hunt) this:
    #search for the selected text in the dendron session 
    text = edit.selected_text()
    user.switcher_focus('code')
    sleep(100ms)
    user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    "paul-vault"
    key('enter')
    sleep(100ms)
    user.find_everywhere(text)
#outlook    
outlook (mail | message) : 
    # open outlook and start a new email    
    user.switcher_focus('outlook')  
    sleep(400ms)
    key(cmd-1)
    key(cmd-n)
outlook meeting: 
    # open outlook and start a new appointment    
    user.switcher_focus('outlook')
    sleep(400ms)
    key(cmd-2)
    key(cmd-n)
^(teams | team) chat [{user.my_note_groups}]$:
    #reach out to so and so on teams
    user.switcher_focus('teams')
    sleep(400ms)
    key(cmd-n)
    sleep(400ms)
    edit.delete_line()
    sleep(200ms)
    insert(user.my_note_groups)

#text expanders and greetings
kr:
    #say kind regards
    insert("Kind Regards, \n")
krp:
    #say kind regards
    insert("Kind Regards,\nPaul")

work mail:
    # insert ihs email address
    insert("paul.jones@ihsmarkit.com")

personal mail:
    #insert personal email address
    insert("paul.alexander.jones@gmail.com")



#mouse related activities
touch clear:
    mouse_click(0)
    edit.delete_line()

touch second:
    mouse_click(0)
    edit.line_start()
    edit.line_start()
    "## "

touch clapper:
    mouse_click(0)
    key(enter)

get screen text| grab text clip :
    #apply OCR to the screen grab 
    user.run_shortcut("Screen capture text the clipboard")
    

  

#other stuff

slow mode: mode.enable("user.slow")

task type {user.my_task_list}: 
    insert(my_task_list)

open spotlight:
    key(cmd-space)

# open sound input:
#     key(cmd-space)
#     sleep(200ms)
#     "sound input"
#     key(enter)

# open sound output:
#     key(cmd-space)
#     sleep(200ms)
#     "sound output"
#     key(enter)

pick <user.ordinals>:
    n = ordinals or 1
    key("down:{n - 1}")
    sleep(100ms)
    key(return)

    
disk it : 
    key(cmd-s)

portally:
    user.switcher_focus('safari')

skip: skip()

#noise(pop):key(enter)

north:
    key(up)
south:
    key(down)
    
#clapper$ : key(enter)
clap clap : key(enter)

new line : key(enter)
spacy : key(space)
open settings: key(cmd-,)
win close : key(cmd-w)
open menu : 
    #activate the navigation of the menu system for the current app
    key(cmd-shift-/)
vimac:
    #startup vimac  
    key('ctrl-f')  
^home row [<user.text>]:
    # Homerow Redux (UI search)
    key(ctrl-alt-shift-h)
    sleep(50ms)
    insert(text or "") 
preview toggle:
    key(cmd-ctrl-p)
raindrop it:
    #trigger the raindrop addin in safari
    key(cmd-shift-E)

raindrop highlight:
    key(cmd-shift-S)
    
doc toggle:
    key(alt-cmd-d)
trim first:
    edit.line_start()
    key(delete)



read me text:
    #read the selected text to me out loud
    speech.disable()
    edit.copy()
    user.run_shortcut("Read Text")

make PDF:
    # make a PDF from safari
    key(cmd-p)
    sleep(500ms)
    key(cmd-u)


jump <user.system_path>:
    #open finder and go to downloads
    user.switcher_focus('finder')
    sleep(100ms)
    user.file_manager_open_directory(system_path)
    sleep(400ms)
    key(cmd-2)
    sleep(300ms)
    key(ctrl-alt-cmd-4)
    sleep(200ms)
    key(tab)
    sleep(200ms)
    key(alt-up)

jump recents:
    #open finder and go to downloads
    user.switcher_focus('finder')
    sleep(300ms)
    key(shift-cmd-f)

bigify:
    #increase the text size
    key(cmd-+)
smallify:
    #decrease the text size
    key(cmd--)
#magnify:
    key(alt-cmd-+)
#magnifout:
    key(alt-cmd--)

win list:
    #show all the windows for the current application
    key(ctrl-down) 
switchify:
    # This switches to the next open and most recently app.
    key(cmd-tab:1) 
    #ui.windows()[-1].focus()
win switch:            
    #this which is to the next open window in the currently open app
    key(cmd-`:1)

tag {user.my_note_groups} :
    insert ("{my_note_groups}") 

# editor.action.insertCursorAbove
# editor.action.insertCursorBelow
# dendron.copyNoteURL
# dendron.copyNoteRef


jump chat speech:
    # Switch to chat GPT
    user.switcher_focus('chat g p t')

    sleep(300ms)

    #snap_window_to_position
    user.snap_window_to_position("right")
    
    sleep(300ms)

    # Click the speech button
    mouse_move(1636.77734375, 1008.78125)

    sleep(300ms)

    mouse_click(0)

jump chat input:
    # Switch to chat GPT
    user.switcher_focus('chat g p t')

    sleep(300ms)

    #snap_window_to_position
    user.snap_window_to_position("right")
    
    sleep(300ms)

    # Click the speech button
    mouse_move(1636.77734375, 1008.78125)

    sleep(300ms)

    mouse_click(0)
    
print log line:
    print(30*"=|=o")

