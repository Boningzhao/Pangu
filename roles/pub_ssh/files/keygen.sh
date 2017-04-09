#!/usr/bin/expect

set timeout 5

spawn ssh-keygen -t rsa
expect {
"(/root/.ssh/id_rsa)" { send "\r"; exp_continue }
"(y/n)?" { send "n\r"; exp_continue }
"(empty for no passphrase):" { send "\r"; exp_continue }
"again:" { send "\r"; exp_continue }

}


