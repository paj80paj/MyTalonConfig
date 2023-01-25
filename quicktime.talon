os: mac
and app.bundle: com.apple.QuickTimePlayerX
-

speed half:
    user.menu_select('View|Playback Speed|Half')
speed down:
    user.menu_select('View|Playback Speed|Slower')
speed normal:
    user.menu_select('View|Playback Speed|Normal')
speed fast:
    user.menu_select('View|Playback Speed|Fast')
speed up:
    user.menu_select('View|Playback Speed|Faster')
speed double:
    user.menu_select('View|Playback Speed|Double')
open inspector:
    user.menu_select('Window|Show Movie Inspector')
win float:
    #for quick time float the window on top
    user.menu_select('View|Float on Top')