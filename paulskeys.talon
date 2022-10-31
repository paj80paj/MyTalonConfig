o?clapper : key(enter)

new mail : 
    # open outlook and start a new email    
    user.switcher_focus('outlook')  
    sleep(400ms)
    key(cmd-1)
    key(cmd-n)

new appointment: 
    # open outlook and start a new appointment    
    user.switcher_focus('outlook')
    sleep(400ms)
    key(cmd-2)
    key(cmd-n)

new anki question:
    # launch Anki and take the selected text and put it into the question
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(400ms)
    key(esc)
    key(a)
    sleep(400ms)
    user.paste("{text}")

new anki answer:
    # launch Anki and take the selected text and put it into the answer
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(100ms)
    key(esc)
    sleep(400ms)
    key(a)
    sleep(400ms)
    key(tab)
    sleep(300ms)
    user.paste("{text}")

change Anki cloze:
    #changed the current card to a cloze type
    key(cmd-n)
    sleep(400ms)
    "cloze"
    sleep(200ms)
    key('enter')

Anki from talon: 
    #take selected talon command and comment and create a new cloze card
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(100ms)
    key(esc)
    sleep(100ms)
    key(a)
    sleep(100ms)
    key(cmd-n)
    sleep(100ms)
    "cloze"
    sleep(100ms)
    key('enter')
    sleep(100ms)
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

new anki cloze:
    # open Anki and crate a cloze card with the current text
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
    key('up')
    edit.select_line()
    
    key('shift-cmd-c')

    key('shift-cmd-t')  
    'talon'
    key('cmd-enter')

cloze that:
    # insert a cloze operator into a cloze card
    key('shift-cmd-c')
anki tag:
    # tag the current Anki card
    key('shift-cmd-t')
anki save:
    # save the current Anki card and move on to the next one
    key('cmd-enter')
anki hunt this:
    #in search for this text in Anki browser
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(400ms)

    sleep(400ms)
    key(b)
    sleep(400ms)
    user.paste("{text}")
    key(enter)

code talon:
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(200ms)
    "talon_user"
    key('enter')
    
code dendron:
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(200ms)
    "dendron"
    key('enter')

add flash:
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(50ms)
    "Dendron"
    key('enter')
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert("flashcards_VS_Code)")
    sleep(50ms)
    key('enter')
    user.vscode("workbench.action.gotoLine")
    insert("-1")
    insert('cmd-right')
    key('enter')
    edit.line_insert_down()
    insert(text or "")

vimac: 
    key('ctrl-f')

voice add word:
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(50ms)
    "talon_user"
    key('enter')
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert("additional_words")
    sleep(50ms)
    key('enter')
    user.vscode("workbench.action.gotoLine")
    insert("-1")
    insert('cmd-right')
    key('enter')
    edit.line_insert_down()
    insert(text or "")

date insert:
    #insert a date in the Dendron format
    insert(user.time_format_utc("%Y.%m.%d"))

daily child:

    text = edit.selected_text()
    insert("[[daily.journal.")
    # insert(user.time_format_utc("%Y.%m.%d") 
    insert(user.time_format_utc("%Y.%m.%d"))
    key('.')
    insert(text or "")
    insert("]]")

daily go:
    #go to my daily notes in Dendron
    key(cmd-l)
    sleep(100ms)
    insert("daily.journal.")
    insert(user.time_format_utc("%Y.%m.%d"))
    
lookup note:
    #look up a Dendron note
    key(cmd-l)

kr:
    #say kind regards
    insert("Kind Regards, \n  ")

work mail:
    # insert ihs email address
    insert("paul.jones@ihsmarkit.com")

personal mail:
    #insert personal email address
    insert("paul.alexander.jones@gmail.com")

toggle preview:
    key(cmd-ctrl-p)

raindrop it:
    #trigger the raindrop addin in safari
    key(cmd-shift-E)

raindrop highlight:
    key(cmd-shift-S)

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

touch clip:
    mouse_click(0)
    key(enter)
    edit.delete_line()
#key(space:down):
#    speech.enable()

#key(:up):
#    speech.disable()
tagunder <user.text>:
    #mouse_click(0)
    edit.line_end()
    key(enter)
    key(enter)
    insert("[#")
    insert(user.text)
    insert("]()")
    key(enter)

tagit <user.text>:
    #turn selected text into a tag for Dendron
    insert("[#")
    insert(user.text)
    insert("]()")

sync own deck: 

get screen text:
    #apply OCR to the screen grab 
    user.run_shortcut("Screen capture text the clipboard")

read me text: 
    #read the selected text to me out loud
    edit.copy()
    user.run_shortcut("Read Text")

make PDF:
    # make a PDF from safari
    key(cmd-p)
    sleep(500ms)
    key(cmd-u).

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