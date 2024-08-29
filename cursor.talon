app.name: Cursor
-
# Define the commands

id cursor chat:
    # Insert action for cursor chat here
    user.vscode("aichat.newchataction")

id cursor edit:
    user.vscode("aipopup.action.modal.generate")


id cursor settings:
    # Insert action for cursor settings here
    user.vscode("aiSettings.action.open")
