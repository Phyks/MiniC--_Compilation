Projet de compilation : MiniC++ (Lucas Verney)
====

## Présentation

Cette archive `tar.gz` contient tous les codes sources relatifs à mon projet de compilation du fragment de C++, MiniC++, pour le cours "Langages de programmation et compilation".

La commande ``make`` dans le répertoire du projet compile les codes sources en un exécutable `minic++` et la commande `make clean` efface les fichiers générés par `make`.

Le compilateur `minic++` accepte l'option éventuelle `--parse-only` sur sa ligne de commande pour ne réaliser que l'analyse syntaxique du fichier et exactement un fichier MiniC++ portant l'extension `.cpp`.

Le compilateur termine avec le code de sortie 0 si le fichier est syntaxiquement correct, 1 si une erreur lexicale ou syntaxique a été identifiée et 2 si le compilateur a rencontré une erreur interne.

## Structure de l'archive

Les fichiers suivants sont présents dans l'archive :

* `main.ml` : Code principal du compilateur.
* `ast.mli` : Arbre de syntaxe abstraite pour MiniC++.
* `lexer.mll` : Analyseur lexical.
* `parser.mly` : Analyseur syntaxique.
* `lexhack.ml` : Module pour la mise en place du _lexer hack_.

## Choix techniques

Quatre principales difficultés ont été rencontrées :

* La mise en place du _lexer hack_.
* Le traitement des parenthèses.
* Le traitement des opérateurs unaires et notamment leur distinction des opérateurs unaires.
* La résolution des conflits.

Pour la mise en place du _lexer hack_, j'ai opté pour l'utilisation d'une référence dans un module annexe (`lexhack.ml`). Un stockage de la liste des _tident_ sous forme de listes me paraissait suffisant. Cette référence est modifiée par l'analyseur syntaxique quand il rencontre une nouvelle déclaration de classes et lue par l'analyseur lexicale afin de déterminer le type d'un _ident_ (_ident_ ou _tident_). Pour pouvoir utiliser le nouveau type introduit directement dans la classe, j'ai dû séparer la déclaration de classes en deux étapes dans l'analyseur syntaxique.

Pour le traitement des parenthèses, et de leurs priorités notamment, j'ai dû créer un nouveau non-terminal dans l'analyseur syntaxique, en assignant une priorité à ce non-terminal et au _token_ des parenthèses ouvrantes.

Pour le traitement spécifique des opérateurs unaires, la distinction entre opérateur unaire et binaire ne pouvant être réalisée au moment de l'analyse lexicale, j'ai dû définir des priorités particulières pour les règles unaires dans l'analyseur syntaxique.

Enfin, pour la résolution des conflits, et notamment des conflits avec la structure 

    if () 
    if ()
    ...
    else ()
    ...

j'ai assigné une priorité supérieure au _token_ `ELSE` qu'au _token_ `IF` afin de reproduire le comportement du C++ et résoudre les conflits.

## Éléments non-réalisés

Les erreurs syntaxiques pourraient être plus détaillées, incluant notamment les causes pour certaines erreurs basiques (parenthèse ouvrante non fermée, _token_ attendu, ...).
