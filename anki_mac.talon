app.bundle: net.ankiweb.dtop
-
card new:
    #add a new card in anki
    key('a')

#from the main screen
(open) browser today:
     # open the Anki card browser with the cards added today
    key('escape')
    sleep(200ms)
    key('b')
    sleep(100ms)
    insert('added:1')
    key(enter)

(open) browser:
    # open the Anki card browser
    key('b')

(open) browser new:
    # open the Anki card browser with new cards
    key('escape')
    sleep(200ms)
    key('b')
    sleep(100ms)
    insert('is:new')
    key(enter)

(open) browser learning:
    # open the Anki card browser with all the cards in learning
    key('b')
    sleep(100ms)
    insert('is:learning')
    key(enter)

(anki) sink:
    #synchronize Anki
    key(escape) 
    # close the browser
    key(y)



