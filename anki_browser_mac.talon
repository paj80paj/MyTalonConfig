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

card tag <user.text> :
    # tag the Anki card from browser
    key('shift-cmd-a')
    sleep(200ms)
    insert(user.text)
    key(enter)

(card|note) edit:
    user.menu_select('Go|Note')

list go (card|note):
    user.menu_select('Go|Card List')

sidebar go:
    user.menu_select('Go|Sidebar')

duplicates find:
    user.menu_select('Notes|Find Duplicates...')
    
(open) card info:
    #open the info window
    key('cmd-shift-i')

(open) card preview:
    # preview an Anki card in browser
    key(shift-cmd-p)

trash it:
    #delete an Anki card in the browserl Dendron
    key('cmd-del')

card move <user.text>:
    # move the current Anki card to the specified deckrc
    key('cmd-d')
    sleep(200ms)
    insert(user.text)
    #key(enter)

(note|card) toggle:
    user.menu_select('View|Toggle Cards/Notes')

flag red:
    #how do you set the  current card to have a red flag
    key('cmd-1')
    
flag orange:
    #how do you set the  current card to have a orange flag
    key('cmd-2')
    
flag green:
    #how do you set the  current card to have a green flag
    key('cmd-3')
    
    