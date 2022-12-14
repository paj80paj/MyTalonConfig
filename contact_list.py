from talon import Context, Module
# from ..user_settings import get_list_from_csv
# /Users/paul.jones/.talon/user/MyTalonConfig/contact_list.py
# f1\n in /Users/paul.jones/.talon/user/knausj_talon/core/websites_and_search_engines/websites_and_search_engines.py
mod = Module()
mod.list("my_note_groups", desc="My note Groups")

ctx = Context()

take_a_note_groups = {
    "Paul": "Paul"
} 

# take_a_note_groups = get_list_from_csv(
#     "my_note_groups.csv",
#     headers=("Word(s)", "Spoken Form (If Different)"),
#     default=take_a_note_groups, key_first=True
# )

ctx.lists["user.my_note_groups"] = take_a_note_groups

@mod.capture(rule="{user.my_note_groups}")
def my_note_groups(m) -> str:
    "Returns a dynamic note group"
    return m.my_note_groups


