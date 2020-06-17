#!/bin/sh

# Add the ssh config if needed

/usr/sbin/crond
/usr/sbin/sshd -D -e
cp -f /opt/chave /root/.ssh/authorized_keys
RUN chmod 0600 /root/.ssh/authorized_keys