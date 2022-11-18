app.bundle: com.apple.mail
-
# dictation mode gets confused when typing too fast
settings():
    key_wait = 2


archive: key(ctrl-cmd-a)
ditch: key(cmd-backspace)
#test

^select all: key(cmd-a)
flag: key(cmd-shift-l)
unflag: key(cmd-shift-l)
junk: key(cmd-shift-j)
#download:
    #user.outlook_download_images()
#    user.outlook_focus_message_body()

#mark [as] read: key(cmd-shift-l)
mark [as] unread: key(cmd-shift-u)

# verb-noun vs noun-verb, retained for consistency with other
# knausj email apps
new message: key(cmd-n)
send [this] message: key(shift-cmd-d)

#move: key(cmd-shift-m)

#move to [<user.text>]:
    #key(cmd-shift-m)
    #insert(user.text or "")

reply: key(cmd-r)
reply all: key(cmd-shift-r)
forward: key(cmd-shift-f)

open message: key(cmd-o)
close message: key(cmd-w)

#defer | snooze | postpone: user.menu_select("Message|Snooze|Choose a date")

hunt all: key(cmd-alt-f)
hunt here: key(cmd-f)
hunt next: user.menu_select("Edit|Find|Find Next")
hunt last: key(cmd-shift-g)

sync: key(cmd-ctrl-k)

bar switch: key(cmd-ctrl-s)

# cmd-n is "page new", below
window (new | open): user.menu_select("File|New|Main Window")

# not tested in "old Outlook"
# can use Control-[/] for previous/next though that does not focus the message list
next:
    key(down)
last:
    key(up)
collapse:
    key(left)
expand:
    user.outlook_focus_message_list()
    key(right)
message: user.outlook_focus_message_body()

folder <user.text>:
    user.outlook_focus_folder_list()
    insert('{user.formatted_text(text, "ALL_LOWERCASE,NO_SPACES")}')
    user.outlook_focus_message_list()

go [to] inbox: key(cmd-1)
go [to] drafts: key(cmd-4)
go [to] junk: 
go [to] sent: key(cmd-5)
go [to] flagged: key(cmd-3)
go [to] vips : key(cmd-2)

# new Outlook only (not exposed in scripting dictionary)
go [to] archive: user.outlook_set_selected_folder("archive")

# different implementation in "old Outlook" - replace above if you're using it
# flag: key(ctrl-5)
# unflag: user.outlook_unflag()

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