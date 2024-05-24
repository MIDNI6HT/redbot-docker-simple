#!/usr/bin/expect -f

# DO NOT TOUCH THESE COMMANDS IF YOU DO NOT KNOW WHAT THEY DO.

set timeout -1
set instance_name "redbot_instance"

set token $env(TOKEN)
set prefix $env(PREFIX)

spawn bash
send "source /root/redenv/bin/activate && redbot $instance_name\r"

expect "Please enter a valid token."
send "$token\r"

expect "Choose your prefix:"
send "$prefix\r"

expect "Do you want to continue with this prefix?:"
send "y\r"

expect eof
