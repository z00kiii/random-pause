#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPT_NAME="$SCRIPT_DIR/randompause.py"

case $1 in
    start)
        echo "Starting $SCRIPT_NAME..."
        nohup python3 $SCRIPT_NAME &> /dev/null &
        echo "$SCRIPT_NAME started"
        ;;
    stop)
        PID=$(pgrep -f $SCRIPT_NAME)
        if [ ! -z "$PID" ]; then
            kill $PID
            echo "Stopped $SCRIPT_NAME with PID $PID."
        else
            echo "$SCRIPT_NAME is not running."
        fi
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
	esac
