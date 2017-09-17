# Docker Stack web

Voici une stack web contenant php 5.6, Apache, MySQL et un serveur MailDev.

La stack est prête à l'emploi. Il vous suffit d'exécuter la commande docker-compose up -d.

### Quelques précisions

Le php.ini du container est en lien avec le php.ini du dossier. Il vous suffit de rajouter les options que vous souhaitez dedans. Xdebug est d'ailleurs installé dans l'image et vous pouvez le configurer directement dans le php.ini.

Le dossier MySQL contiendra tous les fichiers nécessaires pour faire tourner vos bases de données. Il est vide, mais il sera rempli par défaut au premier lancement de la stack.

Le dossier sites contient tous les fichiers vous permettant de créer les virtual host.

Le dossier www contiendra vos différentes applications. Il contient un fichier index.php affichant la configuration PHP. Un dossier _adminer permet d'accéder à la base de données.

Informations d'accès à la base de données :

- nom d'hôte : db
- utilisateur : root
- mot de passe : root


Vous pouvez délocaliser les dossiers www ou mysql si vous le souhaitez en modifier le fichier docker-compose.yml