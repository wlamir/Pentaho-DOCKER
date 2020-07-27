#!/bin/sh

# Add the ssh config if needed
echo -e "$PASSWORD\n$PASSWORD" | passwd root
/usr/sbin/crond
/usr/sbin/sshd -D -e
