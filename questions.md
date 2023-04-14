# Questions

## Quelles étapes sont réalisées par cette action ?

uses: actions/checkout@v3 --> récupère le code source du projet (permet au conteneur d'accéder au code source du projet)

uses: actions/setup-python@v3 --> installe python dans le conteneur

- installe flask
- installe pytest
- installe les requirements du projet
- run le pytest

## Une étape est définie au minimum par 2 paramètres, lesquels sont-ils et à quoi servent-ils ?

uses: --> permet de spécifier l'action à utiliser
runs: --> permet de spécifier la commande à exécuter

## La première étape contient un paramètre ‘with’, a quoi sert-il ?

with: --> permet de passer des paramètres à l'étape (dans ce cas c'est la version de python)

## À quoi sert l’indicateur Quality Gate ?

analyse le code source du projet et vérifie si il y a des erreurs ou des bugs (si le code est de bonne qualité)

## Quelle est la différence entre les sections New code et Overall Code dans l’onglet Summary ?

new code --> dernier commit
overall code --> code source du projet

## Y a-t-il des Code Smells ? Si oui, combien et pour quelle(s) raisons(s) ?

Il y en a 3, pour les raisons suivantes :

- dans la fonction spend_cash le paramètre deferred n'est pas utilisé
- dans la fonction spend_money le paramètre deferred n'est pas utilisé
- les deux fonctions sont similaires

## Y a-t-il des Security Hotspots ? Si oui, combien et pour quelle(s) raison(s) ?

Oui,
l'image utilisée est executée en tant que root
