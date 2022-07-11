#!/bin/bash

IP="selecaotalentos-pernambucanas.cliqx.com.br"
SVC="zappag.recrutamento.backend"
BOT="/opt/facilitabots/zappag/recrutamento/backend/" #deve terminar com /
PEM="~/fbots/zapway/FacilitaBots-BR.pem"
SRC="$(pwd)/publish/" #deve terminar com /

DATE=$(date +"%Y%m%d-%H%M%S")

(cd Api && dotnet clean && dotnet publish -c Release -r linux-x64 --self-contained false)  

#&& \

#ssh -i $PEM root@$IP "cd /opt/facilitabots/zappag/recrutamento/ && tar -cjf backend_$DATE.tbz backend" && \
#rsync -rPcz --exclude "*.config" --exclude "*.json" --exclude "instance.id" -e "ssh -i $PEM" $SRC root@$IP:$BOT && \
#rsync -rPcz -e "ssh -i $PEM" $SRC/{*.deps.json,*.runtimeconfig*.json} root@$IP:$BOT && \
#ssh -i $PEM root@$IP "chown -R dotnetuser:dotnetuser $BOT && service $SVC restart"
echo "fim de copia"
