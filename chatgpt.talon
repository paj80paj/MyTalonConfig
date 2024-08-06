app.bundle: com.openai.chat
-
chat copy last:
    # Switch to chat GPT
    user.switcher_focus('chat g p t')

    sleep(300ms)

    #snap_window_to_position
    user.snap_window_to_position("right")
    
    sleep(300ms)
    mouse_move(1222.68359375, 965.1171875)
    sleep(500ms)
    mouse_click(0)
    sleep(100ms)
    mouse_click(0)

enter speech:

    mouse_move(1684.203125, 1015.73046875)
    sleep(300ms)
    mouse_click(0)

