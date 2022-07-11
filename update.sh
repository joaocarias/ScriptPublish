#!/bin/bash

#IP="192.168.1.72"
#SVC="Joao.Test.ScriptPublish"
#BOT="/opt/test/" #deve terminar com /
#PEM="~/mypem.pem"
#SRC="$(pwd)/publish/" #deve terminar com /

DATE=$(date +"%Y%m%d-%H%M%S")

#(cd Api && dotnet clean && dotnet publish -c Release -r linux-x64 --self-contained false)  

#&& \

#ssh -i $PEM root@$IP "cd /opt/test/ && tar -cjf backend_$DATE.tbz backend" && \
#rsync -rPcz --exclude "*.config" --exclude "*.json" --exclude "instance.id" -e "ssh -i $PEM" $SRC root@$IP:$BOT && \
#rsync -rPcz -e "ssh -i $PEM" $SRC/{*.deps.json,*.runtimeconfig*.json} root@$IP:$BOT && \
#ssh -i $PEM root@$IP "chown -R dotnetuser:dotnetuser $BOT && service $SVC restart"
echo "fim de copia"
