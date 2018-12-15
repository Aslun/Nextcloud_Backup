#/bin/bash
##########################################################
#     ___         __                                     #
#    /   |  _____/ /_  ______                            #
#   / /| | / ___/ / / / / __ \                           #
#  / ___ |(__  ) / /_/ / / / /                           # 
# /_/  |_/____/_/\__,_/_/ /_/                            #
#                                                        #
# Développeur multi-platerformes                         #
# Twitter : https://twitter.com/bastlanguedoc?lang=fr    #
##########################################################

# Variables
nextcloud_filedire=/home/ # Répertoire de destination
nextcloud_backup=/var/www/html/data/ # Répertoire Nextcloud
commandline=rsync # Ne pas toucher
SERVER=smtp.company.com # Serveur SMTP
FROM=sender@company.com # Sender
TO=recepient@company.com # Destinataire
SUBJ=Some subject # Sujet
MESSAGE=Some message  # Message
CHARSET=utf-8 # Ne pas toucher

# Test commande
if [ -f $commandline ]; 
then
#Installation de Nextcloud Client
echo 'Installation de Rsync pour Debian 9'
apt install rsync -y
else
echo ""
fi

if [ -f $send ]; 
then
#Installation de sendemail 
echo 'Installation de sendemail pour Debian 9'
apt install sendemail -y
else
echo ""
fi

# Lancement de la restauration
$commandline -avz $nextcloud_backup $nextcloud_filedire
sendemail -f $FROM -t $TO -u $SUBJ -s $SERVER -m $MESSAGE -v -o message-charset=$CHARSET
