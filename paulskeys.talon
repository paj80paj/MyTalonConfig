clapper : key(enter)

new mail : 
    user.switcher_focus('outlook')
    sleep(400ms)
    key(cmd-1)
    key(cmd-n)

new appointment: 
    user.switcher_focus('outlook')
    sleep(400ms)
    key(cmd-2)
    key(cmd-n)

new anki question:
    text = edit.selected_text()
    user.switcher_focus('Anki')
    sleep(400ms)
    key(esc)
    key(a)
    sleep(400ms)
    user.paste("{text}")

new anki answer:
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

anki hunt this:
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
    sleep(100ms)
    "talon_user"
    key('enter')
    
code dendron:
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(100ms)
    "dendron"
    key('enter')

vimac: 
    key('ctrl-f')

voice add word:
    text = edit.selected_text()
    user.switcher_focus('code')
    key('ctrl-w')
    sleep(50ms)
    "knauss"
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
    key(cmd-l)
    sleep(100ms)
    insert("daily.journal.")
    insert(user.time_format_utc("%Y.%m.%d"))

go to note:
    key(ctrl-enter)

kr:
    insert("Kind Regards, \nPaul")

work mail:
    insert("paul.jones@ihsmarkit.com")

personal mail:
    insert("paul.alexander.jones@gmail.com")

toggle preview:
    key(cmd-ctrl-p)