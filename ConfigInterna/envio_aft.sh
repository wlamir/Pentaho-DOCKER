PROCESSO=$(ps aux |grep [j]re-1.8.0-openjdk/bin/java -cp |awk '{print $2}')

if [ -z "$PROCESSO" ] ; then

    echo PROCESSO NAO ENCONTRADO
    echo INICIANDO PROCESSO
    /opt/santander/aft/aftenviar

else
    echo "Envio ocorrendo no momento, tentando em 20 minutos"
fi
