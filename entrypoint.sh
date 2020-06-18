#!/bin/sh

# Add the ssh config if needed

/usr/sbin/crond
/usr/sbin/sshd -D -e
cat /opt/chave/authorized_keys > /root/.ssh/authorized_keyss
