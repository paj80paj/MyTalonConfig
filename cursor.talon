app.name: Cursor
-
# Define the commands

cursor chat:
    # Insert action for cursor chat here
    user.vscode("aichat.newchataction")

cursor edit:
    user.vscode("aipopup.action.modal.generate")


cursor settings:
    # Insert action for cursor settings here
    user.vscode("aiSettings.action.open")
