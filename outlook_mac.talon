app.bundle: com.microsoft.Outlook
-
# dictation mode gets confused when typing too fast
settings():
    key_wait = 2
#navigations
open calendar: key(cmd-2)
open messages: key(cmd-1)

#search
hunt all: key(cmd-shift-f)

hunt to {user.my_note_groups}:
    key(cmd-shift-f)
    sleep(200ms)
    insert('to:')
    insert(user.my_note_groups)

hunt from {user.my_note_groups}:
    key(cmd-shift-f)
    sleep(200ms)
    insert('from:')
    insert(user.my_note_groups)

hunt here: key(cmd-f)

hunt next: user.menu_select("Edit|Find|Find Next")

hunt last: key(cmd-shift-g)

#message
[message] archive: user.outlook_archive()
trash it: key(cmd-backspace)
^delete all$: user.menu_select("Edit|Delete All")
[message] flag: key(ctrl-o)
[message] unflag: key(cmd-ctrl-o)
[message] junk: key(cmd-shift-j)

message unread: key(cmd-shift-t)
Attachment save:
    user.menu_select('Message|Attachments|Download All')

# user.menu_select('Message|Find from This Sender')
contact add {user.my_note_groups}:
    user.menu_select('Message|Add Sender to Contacts')
    sleep(200ms)
    insert(user.my_note_groups)
# user.menu_select('Message|Flag')
# user.menu_select('View|Show as Conversations')
# user.menu_select('View|Show as List')
# user.menu_select('View|Previous Pane')
# user.menu_select('View|Next Pane')


# initializing an interaction
new message: key(cmd-n)
message new: key(cmd-n)
meeting|appointment new: key(cmd-n)   


message send: key(cmd-enter)
[message] move: key(cmd-shift-m)

move to [<user.text>]:
    key(cmd-shift-m)
    insert(user.text or "")

[message] reply: key(cmd-r)
[message] reply all: 
    user.menu_select('Message|Reply All')
[message] forward: 
    user.menu_select('Message|Forward')

message open: key(cmd-o)
message close: key(cmd-w)

draft discard: user.menu_select('Draft|Discard')

sync: key(cmd-ctrl-k)

bar switch: key(cmd-alt-s)

# cmd-n is "page new", below
window (new | open): user.menu_select("File|New|Main Window")

# not tested in "old Outlook"
# can use Control-[/] for previous/next though that does not focus the message list
next:
    user.outlook_focus_message_list()
    key(down)
previous:
    user.outlook_focus_message_list()
    key(up)
go top:
    key(alt-up)
go bottom:
    key(alt-down)

message: user.outlook_focus_message_body()

folder <user.text>:
    user.outlook_focus_folder_list()
    insert('{user.formatted_text(text, "ALL_LOWERCASE,NO_SPACES")}')
    user.outlook_focus_message_list()

go [to] inbox:
    key(cmd-1)
    sleep(50ms)
    user.outlook_set_selected_folder("inbox")
go [to] drafts: user.outlook_set_selected_folder("drafts")
go [to] junk: user.outlook_set_selected_folder("junk mail")
go [to] sent: user.outlook_set_selected_folder("sent items")
 
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