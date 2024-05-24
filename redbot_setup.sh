#!/usr/bin/expect -f

# DO NOT TOUCH THESE COMMANDS IF YOU DO NOT KNOW WHAT THEY DO.

set timeout 5
set instance_name "redbot_instance"

spawn bash
send "source /root/redenv/bin/activate && redbot-setup\r"

expect "enter a name for your instance"
send "$instance_name\r"

expect "otherwise input your desired data"
send "/root/redenv/instances/$instance_name\r"

expect "Please confirm"
send "y\r"

expect "Please choose your storage backend."
send "1\r"

send "exit\r"
expect eof