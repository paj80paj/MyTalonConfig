app.bundle: net.ankiweb.dtop
-
change cloze:
    #changed the current card to a cloze type
    key(cmd-n)
    sleep(400ms)
    "cloze"
    sleep(200ms)
    key('enter')

cloze that:
    # insert a cloze operator into a anki card: 
    key('shift-cmd-c')
suspend:
    #in the browser suspend the current Anki card
    key('cmd-j')
tag:
    # tag the current Anki card
    key('shift-cmd-t')
browser tag:
      # tag the Anki card from browser
      key('shift-cmd-a')
card save:
    # save the current Anki card and move on to the next one
    key('cmd-enter')
card new:
    #key('escape') # close the browser
    #sleep(200ms)
    key('a')
card browser:
    # open the Anki card browser
    key('b')
sink:
    #synchronize Anki
    key('esc') # close the browser
    key('y')
preview:
    # preview an Anki card
    key(shift-cmd-p)
trash it:
    #delete an Anki card in the browser
    key('cmd-del')
    
