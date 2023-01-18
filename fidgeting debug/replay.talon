# This script is for replay recent recordings to help try to figure out audio
# errors, clipping bugs, etc. Also see replay_open.talon, and replay.py
# TODO:
# - Add support for listing the saved recordings well?
#tag: user.record_replay
-

# Listen to the last command'.' recording
replay last (file | recording): user.replay_last_recording()
# Listen to the last recording that you saved
replay last saved: user.replay_last_saved()
# Remove the last saved recording
replay (forget | remove) last [saved]: user.replay_remove_last_saved()
# Choose a recent command recording to listen to
replay (pick | select): user.replay_recording_choose()
replay again: user.replay_last_played_recording()
# Save the last commands recording
replay save last: user.replay_save_last()
# Save the last recording you listened to
replay save [last] played: user.replay_save_last_played()


get replay: 
    #user.replay_copy_name(1)
    user.replay_save_last()
    text = clip.text() 
    #text = user.get_last_filename()
    "\n"
    "[[assets/talon/"
    #"/Users/paul.jones/paul-vault/notes/assets/talon/"
    #edit.paste()
    #key("escape")
    '{text}'
    "]]"


