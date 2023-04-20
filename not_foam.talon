not tag: user.foam
-
#tally
go daily:
    user.switcher_focus('code')
    sleep(200ms)
    user.vscode("workbench.action.switchWindow")
    sleep(200ms)
    "talon_user"
    key('enter')
    sleep(200ms)
    user.vscode("workbench.action.quickOpen")
    sleep(100ms)
    insert("dn.")
    insert(user.time_format_utc("%Y-%m-%d"))
    sleep(200ms)
    key(enter)