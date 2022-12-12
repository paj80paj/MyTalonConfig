app: safari
-
tag(): user.find_and_replace
hunt here:
    text = edit.selected_text() 
    key('cmd-f')
    insert(text)
hunt here <user.text>: 
    key('cmd-f')
    insert(user.text)
hunt next: key(enter)
