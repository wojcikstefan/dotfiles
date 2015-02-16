# A script to run all the services necessary to develop Close.io
#
# Cheatsheet
# Split pane horizontally: tell application "System Events" to keystroke "D" using command down
# Split pane vertically: tell application "System Events" to keystroke "d" using command down
# Compile with: osacompile -o start_closeio_services.app start_closeio_services.scpt

tell application "iTerm"
    activate

    # make a new terminal
    set myterm to (make new terminal)

    tell myterm
        launch session "Panes"

        tell the last session to write text "mongod -f ~/mongodb/local.conf"
        #tell the last session to write text "mongod -f ~/mongodb/local_rs_conf_0.conf"

        #tell application "System Events" to keystroke "d" using command down
        #tell the last session to write text "mongod -f ~/mongodb/local_rs_conf_1.conf"

        #tell application "System Events" to keystroke "d" using command down
        #tell the last session to write text "mongod -f ~/mongodb/local_rs_conf_2.conf"

    end tell

    # launch a default shell in a new tab in the same terminal
    launch session "Default Session"

    tell myterm
        launch session "Panes"

        tell the last session to write text "redis-server"

        tell application "System Events" to keystroke "d" using command down
        tell the last session to write text "elasticsearch"

    end tell

    # launch a default shell in a new tab in the same terminal
    launch session "Default Session"

    tell myterm
        launch session "Panes"
        tell the last session to write text "cdcio"
    end tell

end tell
