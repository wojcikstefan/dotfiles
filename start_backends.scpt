# A script to run all the backend services necessary to develop Close.io
#
# Compile with: osacompile -o start_backends.app start_backends.scpt

tell application "iTerm2"

    # Create a new window
    set newWindow to (create window with default profile)

    select newWindow
    tell newWindow

        # Run MongoDB in the first tab
        tell current session to write text "mongod -f ~/mongodb/configs/local.conf"

        # Add a tab and run Redis and Elasticsearch in separate panes
        set newTab to (create tab with default profile)
        tell newTab
            tell current session

                set newSession to (split vertically with default profile)
                tell newSession
                    write text "redis-server"
                end tell

                write text "ES_HEAP_SIZE=8g elasticsearch"
            end tell
        end tell

        # Add a tab and go to the repo
        set newTab2 to (create tab with default profile)
        tell newTab2
            tell current session
                write text "cdcio"
            end tell
        end tell

    end tell
end tell

