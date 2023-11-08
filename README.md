# Squelette pour mes projets 

Mon espace confortable pour travailler

Fonctionne sur zsh 5.8.1 (x86_64-ubuntu-linux-gnu), je n'ai pas testé d'autre environnement.

## C'est partit !

On clone le repo avec le traditionnel git clone : 

```
git clone https://github.com/titileboss/squelette.git
```

Ou son cousin un peu consanguin 

```
emplacement=${emplacement:="squelette"} && git clone https://github.com/titileboss/squelette.git $emplacement && cd $emplacement
```

On installes les prérequis :

```
sudo apt install $(cat requis/paquets)  
```

On installe les paquets python :

```
pip install $(cat requis/python)
```

On source les variables d'environnements :
```
source .env
```

On décrypte la clé privé github.enc avec le programme présent dans .local/bin, vous avez normalement enrichi votre path de ce chemin lors de la précédente commande : 
```
mdp.github 
```
> :warning: **Si vous n'êtes pas le propriétaires du repo :** (non obligatoire, simplifie juste la vie) pour  créer votre propre clé aller dans le dossier Docs/ -> cle.ssh.md


## fichier .debug

Le fichier .debug se source `source .debug` charge en mémoire tous les composants bash présents dans lib/*.
Utile pour le débuggage d'un composants

## fichier .test

Le fichier .test se source ou s'éxécute, doit contenir la logique qui teste les composants.

## fichier .admin

Le fichier .admin se source, contient des fonctions utiles au projets en cours.
On y retrouve:
- des fonctions verbes_sujets classifié par catégorie, une fonction générique qui en comprends d'autres

Ceci est utiles pour par example:
- Nettoyer des relicats python / terraform etc...
- Réinitialiser des bases de données sqlite / sql / postgress etc...
- Fournir des rapports, envoyer des emails etc...

## fichier .dev

Vide par défault, de manière générale contient quelques fonctions / alias utiles pour itérer.
Quand .env receuille une logique lourde avec beaucoup d'interaction utilisateurs alors le fichier .dev viens récupérer les données générées pour les rendres persistantes dans le temps. 