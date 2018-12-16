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

#Variables
nextcloud_filedire=/home/ # Répertoire à sauvegarder
nextcloud_directory=/remote.php/webdav # Lien du WebDav
username=username # nom d'utilisateur de l'administrateur nextcloud
password=password # Mot de passe de l'administrateur
web_nextcloud=127.0.0.1 # IP par défaut de nextcloud serveur 
commandline=nextcloudcmd # Ne pas toucher
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

#Lancement du backup
$commandline $nextcloud_filedire http://$username:$password@$web_nextcloud$nextcloud_directory
sendemail -f $FROM -t $TO -u $SUBJ -s $SERVER -m $MESSAGE -v -o message-charset=$CHARSET


