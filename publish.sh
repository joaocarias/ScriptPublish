#!/bin/bash

IP="192.168.1.72"
SVC="Joao.Test.ScriptPublish"
BOT="/opt/sites/scriptpublish" #deve terminar com /
PEM="~/.ssh/id_rsa.pub"
SRC="$(pwd)/Api/bin/Release/net6.0/linux-x64/publish/" #deve terminar com /
USER="joaofranca"
USERDOTNET="dotnetuser"

DATE=$(date +"%Y%m%d-%H%M%S")

(cd Api && dotnet clean && dotnet publish -c Release -r linux-x64 --self-contained false)  && \

ssh -i $PEM $USER@$IP "cd /opt/sites/scriptpublish && tar -cjf backend_$DATE.tbz backend" && \
rsync -rPcz --exclude "*.config" --exclude "*.json" --exclude "instance.id" -e "ssh -i $PEM" $SRC $USER@$IP:$BOT && \
rsync -rPcz -e "ssh -i $PEM" $SRC/{*.deps.json,*.runtimeconfig*.json} $USER@$IP:$BOT && \
ssh -i $PEM $USER@$IP "service $SVC restart"
#"chown -R dotnetuser:dotnetuser $BOT && service $SVC restart"

echo "fim de copia"
