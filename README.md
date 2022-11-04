# DART_FROG POC

Projet de test pour l'outil [dart_frog](https://dartfrog.vgv.dev/), créé à l'aide de [melos](https://pub.dev/packages/melos) pour la gestion des sous projets.  

Ce projet contient trois sous projets :
- common : librairie dart accueillant le code commun aux deux autres projets
- flutter_app : application Flutter consommant le back
- frog_back : backend créé avec l'outil dart_frog

## Prérequis

dart_frog nécessite dart 2.18, il faudra donc avoir la bonne version à disposition.  

1) installer melos (cf https://melos.invertase.dev/getting-started) : `dart pub global activate melos`
2) installer dart_frog (cd https://dartfrog.vgv.dev/docs/overview) : `dart pub global activate dart_frog_cli`
3) bootstrapper melos : `melos bootstrap`. ⚠️ pour éviter les erreurs avec fvm, il faudra utiliser la commande suivante : `fvm flutter pub global run melos bootstrap`
