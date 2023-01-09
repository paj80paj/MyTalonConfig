title: /Add/i
app.bundle: net.ankiweb.dtop
-

card cloze:
    #changed the current card to a cloze type
    key(cmd-n)
    sleep(400ms)
    "cloze"
    sleep(200ms)
    key('enter')


clozify that:
    # insert a cloze operator into a anki card: 
    key('shift-cmd-c')

card tag <user.text>:
    # tag the current Anki card with the text you say
    key(shift-cmd-t)
    sleep(200ms)
    insert(user.text)
    key(enter)

card save:
    # save the current Anki card and move on to the next one
    key('cmd-enter')

card new:
    key('escape') 
    # close the browser
    #sleep(200ms)
    key('a')

card type:
    #change the type of the current Anki card
    key('cmd-n')