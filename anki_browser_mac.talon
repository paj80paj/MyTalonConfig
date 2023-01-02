title: /browse/i
app.bundle: net.ankiweb.dtop
-
#browser related

card suspend:
    #in the browser suspend the current Anki card
    key('cmd-j')

card type:
    #change the type of the current Anki card
    key('cmd-n')

browser tag:
    # tag the Anki card from browser
    key('shift-cmd-a')

preview:
    # preview an Anki card
    key(shift-cmd-p)
trash it:
    #delete an Anki card in the browser
    key('cmd-del')

move default:
    # move the current Anki card to the default deck
    key('cmd-d')
    sleep(200ms)
    insert('Default')
    key(enter)

open info:
    #open the info window
    key('cmd-shift-i')