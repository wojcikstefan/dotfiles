# A script to run all the backend services necessary to develop Close.io
#
# Cheatsheet
# Split pane horizontally: tell application "System Events" to keystroke "D" using command down
# Split pane vertically: tell application "System Events" to keystroke "d" using command down
# Compile with: osacompile -o start_backends.app start_backends.scpt

tell application "iTerm"
    activate

    # make a new terminal
    set myterm to (make new terminal)

    tell myterm
        launch session "Panes"

        tell the last session to write text "mongod -f ~/mongodb/configs/local.conf"

    end tell

    # launch a default shell in a new tab in the same terminal
    launch session "Default Session"

    tell myterm
        launch session "Panes"

        tell the last session to write text "redis-server"

        tell application "System Events" to keystroke "d" using command down
        tell the last session to write text "ES_HEAP_SIZE=8g elasticsearch"

    end tell

    # launch a default shell in a new tab in the same terminal
    launch session "Default Session"

    tell myterm
        launch session "Panes"
        tell the last session to write text "cdcio"
    end tell

end tell
