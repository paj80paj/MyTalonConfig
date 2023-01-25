app.bundle: com.apple.mail
-
# dictation mode gets confused when typing too fast
settings():
    key_wait = 2

#mail box navigations
go [to] inbox: key(cmd-1)
go [to] drafts: key(cmd-4)
go [to] junk: #empty
go [to] sent: key(cmd-5)
go [to] flagged: key(cmd-3)
go [to] vips : key(cmd-2)

#search
hunt all: key(cmd-alt-f)
hunt here: key(cmd-f)
hunt next: user.menu_select("Edit|Find|Find Next")
hunt last: key(cmd-shift-g)

#message organization
archive: key(ctrl-cmd-a)
trash it: key(cmd-backspace)
flag: key(cmd-shift-l)
unflag: key(cmd-shift-l)
junk: key(cmd-shift-j)
mark [as] unread: key(cmd-shift-u)
^select all: key(cmd-a)

new message: key(cmd-n)
send [this] message: key(shift-cmd-d)

#move: key(cmd-shift-m)

#move to [<user.text>]:
    #key(cmd-shift-m)
    #insert(user.text or "")

reply: key(cmd-r)
reply all: key(cmd-shift-r)
forward: key(cmd-shift-f)

attachment save:
    user.menu_select('File|Save Attachments…')

open message: key(cmd-o)
close message: key(cmd-w)

#defer | snooze | postpone: user.menu_select("Message|Snooze|Choose a date")


sync: key(cmd-ctrl-k)

bar switch: key(cmd-ctrl-s)

window (new | open): user.menu_select("File|New|Main Window")

next:
    key(down)
previous:
    key(up)
go top:
    key(alt-cmd-up)
go bottom:
    key(alt-cmd-down)


# message composition
bold: key(cmd-b)
italic: key(cmd-i)
underline: key(cmd-u)
strike through: key(cmd-shift-x)
normal: user.menu_select("Edit|Clear Formatting")

copy style: user.menu_select("Edit|Copy Formatting")
paste style: user.menu_select("Edit|Paste Formatting")

bullet: user.menu_select("Format|Bulleted List")

move right: key(cmd-])
move left: key(cmd-[)