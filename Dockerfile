### 1. Get Linux
FROM centos:7.8.2003
### 2. Get Java via the package manager
#EXPOSE 22
RUN yum install -y bash openssh-server openssh-clients openrc xauth libxtst libxrender fontconfig ttf-dejavu java-1.8.0-openjdk java-1.8.0-openjdk-devel cronie nano
RUN yum clean all
### 3. configure passwordless SSH
ENV JAVA_HOME /etc/alternatives/jre
#RUN passwd -d root
#RUN ssh-keygen -A
ENV PASSWORD SenhaDoUsuario
RUN mkdir /root/.ssh
RUN touch /root/.ssh/authorized_keys
RUN chmod 0600 /root/.ssh
RUN chmod 0600 /root/.ssh/authorized_keys
RUN mkdir -p /usr/local/scripts/root/logs/
#COPY /ConfigInterna/monitoria_aft.sh /usr/local/scripts/root/
#COPY /ConfigInterna/envio_aft.sh /usr/local/scripts/root/
COPY /ConfigInterna/root /var/spool/cron/
#ADD KEY-PUB/ednaldo.junior.pub /root/.ssh/authorized_keys
#RUN mkdir /opt/santander
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh
COPY /ConfigInterna/sshd_config /etc/ssh/sshd_config
#COPY /Instalador/santander-aft-linux-1.3.1.1.tar.gz /opt/santander/
CMD ["/entrypoint.sh"]
