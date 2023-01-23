from talon import Context, Module, actions, app, ui

ctx = Context()
mod = Module()

mod.tag("homerow_search")


@ctx.action_class("user")
class UserActions:
    def homerow_search(text: str):
        if (
            len(ctx.tags) > 0
            and (focused_element := ui.focused_element())
            # TODO(nriley): focused_element.window sometimes raises a UIErr
            and win_is_homerow_search_bar(focused_element.window)
        ):
            focused_element.AXValue = text.lower()
            return

        # TODO(nriley): Consider always using accessibility?
        actions.key("ctrl-alt-shift-h")
        actions.sleep("50ms")
        actions.insert(text.lower())

    def homerow_pick(label: str):
        actions.insert(label.upper())
        actions.key("enter")
        complete_homerow_search()


@mod.action_class
class Actions:
    def homerow_search(text: str):
        """Search in Homerow"""

    def homerow_pick(label: str):
        """Pick a label in Homerow"""


def complete_homerow_search():
    ctx.tags = []
    ui.unregister("element_focus", element_focus)


def element_focus(element):
    complete_homerow_search()


def win_is_homerow_search_bar(win):
    return (
        win.app.bundle == "com.dexterleng.Homerow" and win.title == "Homerow Search Bar"
    )


def win_open(win):
    if not win_is_homerow_search_bar(win):
        return
    if len(ctx.tags) == 0:
        ctx.tags = ["user.homerow_search"]
        ui.register("element_focus", element_focus)


if app.platform == "mac":
    app.register("ready", lambda: ui.register("win_open", win_open))