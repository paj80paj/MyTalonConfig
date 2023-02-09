os: mac
app: discord
-
settings():
    insert_wait = 1
tag(): user.messaging

# Navigation: Servers
server up: key(cmd-alt-up)
server down: key(cmd-alt-down)

# Navigation: Channels
hunt all: key(cmd-f)
hunt channel: key(cmd-k)
channel up: key(alt-up)
channel down: key(alt-down)
channel previous: key(alt-left)
channel next: key(alt-right)

message reply: key(r)
text go: key(esc)
reaction add: key(plus)
message edit: key(e)
message unread: key(opt-enter)
open shortcuts: key(cmd-/)
mute toggle: key(cmd-shift-m)
# 
# #reply
read previous: key(alt-shift-up)
# action(user.messaging_unread_next): key(alt-shift-down)
# action(user.discord_mentions_last): key(cmd-alt-shift-up)
# action(user.discord_mentions_next): key(cmd-alt-shift-down)
# action(user.discord_oldest_unread): key(shift-pageup)

# UI
# action(action(user.discord_toggle_pins): key(cmd-p)
# action(user.): key(cmd-i)
# action(user.discord_toggle_members): key(cmd-u)
# action(user.discord_emoji_picker): key(cmd-e)
# action(user.discord_gif_picker): key(cmd-g)

# # Misc
# action(user.messaging_mark_workspace_read): key(shift-esc)
# action(user.messaging_mark_channel_read): key(esc)
# action(user.messaging_upload_file): key(cmd-shift-u)
# action(user.discord_markox_read): key(cmd-shift-e)
# action(user.discord_mute): key(cmd-shift-m)
# action(user.discord_deafen): key(cmd-shift-d)
# action(user.discord_answer_call): key(cmd-enter)
# action(user.discord_decline_call): key(esc)
