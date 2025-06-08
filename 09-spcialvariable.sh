
#!/bin/bash
echo "Hello from Venkatesh"
echo "Name of shell script = $0"

echo "Number of arguments passed to the script =$#"

echo "Script Name = $0"
echo "Current Directory =$PWD"
echo "user running the script =$USER"
echo "Home Directory of the script =$HOME"
echo "PID of the Script =$$"

sleep 10 &
echo "PID of the last command in backgroung : $!"