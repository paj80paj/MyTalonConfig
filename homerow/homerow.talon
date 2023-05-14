os: mac
-
# Homerow (with search + labels enabled)
^axon [<user.text>]: user.homerow_search("{text or ''}")
^axon [<user.text>]: 
    key()
    user.homerow_search("{text or ''}")