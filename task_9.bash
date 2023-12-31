IFS = ':'
while read -r line; do
    USERNAME=$(echo "$line" | cut -d ':' -f 1)
    PASSWORD=$(echo "$line" | cut -d ':' -f 2)
    USER_ID_INFO=$(echo "$line" | cut -d ':' -f 5)
    GROUP_ID=$(echo "$line" | cut -d ':' -f 4)
    HOME_DIRECTORY=$(echo "$line" | cut -d ':' -f 6)
    COMMAND_SHELL=$(echo '$line' | cut -d ':' -f 7)
    echo " The user $USERNAME is part of the $GROUP_ID gang, lives in $HOME_dDIRECTORY and rides $COMMAND_SHELL. $USER_ID's place is protected by the passcode $PASSWORD, more info about the user here : $USER_ID_INFO"
done < /etc/passwd

