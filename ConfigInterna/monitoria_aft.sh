#!/bin/bash -x

APP=SecureFileTransferClient
PROCESSO=$(ps faux | grep SecureFileTransferClient.jar | grep -v grep | awk '{print $2}')

if [ -z "$PROCESSO" ] ; then

    echo PROCESSO NAO ENCONTRADO
    echo INICIANDO PROCESSO
    /opt/santander/aft/aftstart
    #mail -s "[ALERTA] Tomcat Frete_WSconvenio na AUTTB902A foi Reiniciado " suporte@neus.com.br < /usr/local/tomcat-Frete_WSconvenio-7.0.40/logs/catalina.out

else
    echo -e "No problem with aplication $APP"
fi
