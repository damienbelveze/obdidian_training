(**secure shell Protocol**) tunnel sécurisé de communication entre une machine client et un serveur. 
une connexion en ssh à un serveur depuis un terminal permet d'envoyer et de recevoir des données sans compromettre l'intégrité, la confidentialité et l'authenticité de ces échanges. 
Le ssh repose sur du [[Chiffrement asymétrique]] (double jeu de clé)

# Se créer une clé ssh

``
$ ssh-keygen
``

demande un password et crée le jeu de clé

va créer une clé RSA 3072 bits dans le répertoire ~/.ssh 

  - ~/.ssh/id_rsa  
  - ~/.ssh/id_rsa.pub
  - .ssh/config

ssh est un dossier caché, pour l'afficher Ctrl+H

envoyer la clé publique sur la page de l'hébergeur qui gère le serveur. 

à partir de ce moment on peut se connecter en ssh : 

login : nomduserveur@ipduserveur
mot de passe : password

On peut rajouter une ligne dans /etc/hosts pour donner un nom au serveur

| IP du serveur | nom du serveur |

de sorte qu'à l'avenir on n'aurai qu'à s'identifier en tapant : 

ssh nom du serveur + password

# se créer une clé SSH pour son ordinateur avec Windows

![](images/ssh_key.png)

Source :  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Ajouter la clé à Github :  https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
