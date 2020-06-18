#!/bin/sh

# Add the ssh config if needed

/usr/sbin/crond
/usr/sbin/sshd -D -e
cp -f /opt/chave/authorized_keys /root/.ssh/authorized_keys
chmod 0600 /root/.ssh/authorized_keys
