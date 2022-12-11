app.bundle: net.ankiweb.dtop
-
card cloze:
    #changed the current card to a cloze type
    key(cmd-n)
    sleep(400ms)
    "cloze"
    sleep(200ms)
    key('enter')

cloze that:
    # insert a cloze operator into a anki card: 
    key('shift-cmd-c')
card suspend:
    #in the browser suspend the current Anki card
    key('cmd-j')
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

open browser:
    # open the Anki card browser
    key('b')
open browser today:
    # open the Anki card browser with the cards added today
    key('b')
    sleep(100ms)
    insert('added:1')
    key(enter)

open browser new:
    # open the Anki card browser with new cards
    key('b')
    sleep(100ms)
    insert('is:new')
    key(enter)

open browser learning:
    # open the Anki card browser with all the cards in learning
    key('b')
    sleep(100ms)
    insert('is:learning')
    key(enter)

browser tag:
    # tag the Anki card from browser
    key('shift-cmd-a')

sink:
    #synchronize Anki
    key(escape) 
    # close the browser
    key(y)
preview:
    # preview an Anki card
    key(shift-cmd-p)
trash it:
    #delete an Anki card in the browser
    key('cmd-del')

