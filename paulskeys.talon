clapper : key(enter)
spacy : key(space)

open settings: key(cmd-,)
win close : key(cmd-w)

toggle doc:
    key(alt-cmd-d)



clip first:
    edit.line_start()
    key(delete)

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

anki question:
    # launch Anki and take the selected text and put it into the question
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(400ms)
    key(esc)
    key(a)
    sleep(400ms)
    user.paste("{text}")

anki answer:
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

anki from talon: 
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

anki hunt this:
    #in search for this text in Anki browser
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(200ms)
    key(esc)
    sleep(200ms)
    key(b)
    sleep(200ms)
    user.paste("{text}")
    key(enter)

anki hunt <user.text>:
    #in search for this text in Anki browser
    text = user.text()
    user.switcher_focus('Anki')
    sleep(200ms)
    key(esc)
    sleep(200ms)
    key(b)
    sleep(200ms)
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
Dendron insert:
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(200ms)
    "dendron"
    key('enter')
    edit.extend_file_end()
    edit.line_insert_down()
    insert(text or "")
    
vimac:
    #startup vimac  
    key('ctrl-f')  
^home row [<user.text>]:
    # Homerow Redux (UI search)
    key(ctrl-alt-shift-h)
    sleep(50ms)
    insert(text or "")

tally word:
    #how to I add a new word to my talon vocabulary from selection
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
    edit.extend_file_end()
    edit.line_insert_down()
    insert(text or "")

tally repword:
    #how to I add a new word to my talon vocabulary from selection
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(50ms)
    "talon_user"
    key('enter')
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert("words_to_replace.csv")
    sleep(50ms)
    key('enter')
    edit.extend_file_end()
    edit.line_insert_down()
    insert(text or "")


tally my commands:
    #jump to paul's talon file
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(50ms)
    "talon_user"
    key('enter')
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert("paulskeys.talon")
    sleep(50ms)
    key('enter')
tally hunt <user.text>:
    #search for the spoken text in the talon session 
    user.switcher_focus('code')
    sleep(100ms)
    user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    "talon_user"
    key('enter')
    user.find_everywhere(text)
tally hunt this:
    #search for the supply text in the talon session 
    text = edit.selected_text()
    user.switcher_focus('code')
    sleep(100ms)
    user.vscode("workbench.action.switchWindow")
    sleep(100ms)
    "talon_user"
    key('enter')
    user.find_everywhere(text)

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
#    speech.+()

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

tagify <user.text>:
    #turn selected text into a tag for Dendron
    insert("[#")
    insert(user.text)
    insert("]()")
    
get screen text:
    #apply OCR to the screen grab 
    user.run_shortcut("Screen capture text the clipboard")
    
grab text clip:
    #apply OCR to the screen grab 
    user.run_shortcut("Screen capture text the clipboard")
    #user.run_shortcut_async("Screen capture text the clipboard")
    text = clip.text()
    clip.set_text(text)

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

paste snake:
    text = clip.text()
    text = insert(user.formatted_text(text, "snake"))
    #how to remove punctuation from text
    #the regex for removing the new line chars from text_string
    #text = re.sub(r'[\r]+', ' ', text)
    #the regex for removing the punctuation from text_string
    #text = re.sub(r'[^\w\s]', '', text)
    insert(text)

test command:
    key(ctrl)
    sleep(400ms)
    key(ctrl)
bigify:
    key(cmd-+)
smallify:
    key(cmd--)
magnify:
    key(alt-cmd-+)
magnifout:
    key(alt-cmd--)
testing testing <user.my_note_groups>: insert(user.my_note_groups)





    

