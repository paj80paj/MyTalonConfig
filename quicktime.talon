os: mac
and app.bundle: com.apple.QuickTimePlayerX
-

play half:
    user.menu_select('View|Playback Speed|Half')
play slow:
    user.menu_select('View|Playback Speed|Slower')
play normal:
    user.menu_select('View|Playback Speed|Normal')
play fast:
    user.menu_select('View|Playback Speed|Fast')
play faster:
    user.menu_select('View|Playback Speed|Faster')
play double:
    user.menu_select('View|Playback Speed|Double')
open inspector:
    user.menu_select('Window|Show Movie Inspector')
win float:
    #for quick time float the window on top
    user.menu_select('View|Float on Top')  