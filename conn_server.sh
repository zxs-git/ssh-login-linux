#!/usr/bin/expect

set user [lrange $argv 0 0]
set password [lrange $argv 1 1]
set ip [lrange $argv 2 2]

set time 10
spawn ssh $user@$ip
expect {
           "(yes/no)?" {
        send "yes\n"
        expect "password:"
        send "$password\n"
    }
        "password:" {
        send "$password\n"
    }
    }

interact