Projet de compilation : MiniC++ (Lucas Verney) ====

## Présentation

Cette archive `tar.gz` contient tous les codes sources relatifs à mon projet de
compilation du fragment de C++, MiniC++, pour le cours "Langages de
programmation et compilation".

La commande ``make`` dans le répertoire du projet compile les codes sources en
un exécutable `minic++` et la commande `make clean` efface les fichiers générés
par `make`.

Le compilateur `minic++` accepte l'option éventuelle `--parse-only` sur sa
ligne de commande pour ne réaliser que l'analyse syntaxique du fichier et
exactement un fichier MiniC++ portant l'extension `.cpp`.

Le compilateur termine avec le code de sortie 0 si le fichier est
syntaxiquement correct, 1 si une erreur lexicale ou syntaxique a été identifiée
et 2 si le compilateur a rencontré une erreur interne.

## Structure de l'archive

Les fichiers suivants sont présents dans l'archive :

* `main.ml` : Code principal du compilateur.
* `ast.mli` : Arbre de syntaxe abstraite pour MiniC++.
* `lexer.mll` : Analyseur lexical.
* `parser.mly` : Analyseur syntaxique.
* `lexhack.ml` : Module pour la mise en place du _lexer hack_.
* `typer.ml` : Typeur
* `compiler.ml` : Production de code
* `ast_typing.mli` : Arbre de syntaxe abstraite en sortie du typeur
* `mips.ml` : Module pour la production de code MIPS

## Choix techniques

### Analyse lexicale et syntaxique

Quatre principales difficultés ont été rencontrées :

* La mise en place du _lexer hack_.
* Le traitement des parenthèses.
* Le traitement des opérateurs unaires et notamment leur distinction des
  opérateurs unaires.
* La résolution des conflits.

Pour la mise en place du _lexer hack_, j'ai opté pour l'utilisation d'une
référence dans un module annexe (`lexhack.ml`). Un stockage de la liste des
_tident_ sous forme de listes me paraissait suffisant. Cette référence est
modifiée par l'analyseur syntaxique quand il rencontre une nouvelle déclaration
de classes et lue par l'analyseur lexicale afin de déterminer le type d'un
_ident_ (_ident_ ou _tident_). Pour pouvoir utiliser le nouveau type introduit
directement dans la classe, j'ai dû séparer la déclaration de classes en deux
étapes dans l'analyseur syntaxique.

Pour le traitement des parenthèses, et de leurs priorités notamment, j'ai dû
créer un nouveau non-terminal dans l'analyseur syntaxique, en assignant une
priorité à ce non-terminal et au _token_ des parenthèses ouvrantes.

Pour le traitement spécifique des opérateurs unaires, la distinction entre
opérateur unaire et binaire ne pouvant être réalisée au moment de l'analyse
lexicale, j'ai dû définir des priorités particulières pour les règles unaires
dans l'analyseur syntaxique.

Enfin, pour la résolution des conflits, et notamment des conflits avec la
structure 

    if () if () ...  else () ...

j'ai assigné une priorité du _token_ `ELSE` à celle du _token_ `IF` afin de
reproduire le comportement du C++ et résoudre les conflits.

### Typage

Pour le typage, j'ai défini une fonction par structure à compiler. Pour chaque
expression, je renvoie le nouvel arbre de syntaxe abstraite et le type de
l'expression. Conformément au sujet, un certain nombre de remplacements sont
effectués pour faciliter la compilation :
* `Null` est remplacé par l'entier 0, avec un type `ATNull`
* `true` et `false`sont remplacés respectivement par les entiers 1 et 0
* l'opérateur flèche est remplacée par le déréférencement d'un pointeur et
  l'opérateur point.

J'utilise des Hashtbl pour stocker toute donnée utile ultérieurement, et j'ai
adapté l'arbre de syntaxe abstraite pour compiler plus facilement. En
particulier, l'arbre de syntaxe abstraite a été modifié pour ne pas conserver
les informations de type, inutiles, après le typage. Je stocke également dans
l'arbre de syntaxe abstraite les variables locales propres à chaque instruction
ou à chaque déclaration ainsi que la taille de la _frame_ à allouer pour ces
instructions. J'ai également séparé nettement dans le nouvel arbre de syntaxe
abstraite les déclarations de classe des déclarations de variables, pour un
traitement facilité.

En particulier, j'utilise les Hashtbl suivants :
* `globals_ pour stocker les variables globales (nom de la variable et type)
* `decl\_class` pour stocker les déclarations de classe
* `decl\_fonction` pour stocker les déclarations de fonctions
* `glob\_objects` pour stocker les objets déclarés en-dehors de toute fonction
* `refs\_` pour stocker les identifiants de variables qui sont des références
* `constructors` pour stocker les constructeurs des classes (correspondance
  entre le nom de la classe et le nom effectivement attribué au constructeur
  lors de la résolution de la surcharge)

D'autres Hashtbl sont utilisés localement pour garder une trace des éléments
propres à chaque construction. En particulier, un Hashtbl `locals` est utilisé
pour garder en mémoire les variables locales, leur type et leur position sur la
pile.

Des références globales permettent de garder une trace de :
* la fonction actuellement compilée (`current\_function`) pour traiter
  facilement les instructions `return`
* l'objet actuellement compilé (`current\_object`) pour traiter facilement le
  mot-clé `this`
* le nombre de fonctions rencontrées, pour donner un nom unique au moment de la
  résolution de la surcharge

Pour le typage des fonctions, on conserve dans l'arbre de syntaxe abstraite un
Hashtbl contenant les identifiants de variables, leur taille et leur position
sur la pile. Cette position peut être :
* ou bien une position effective sur la pile
* ou bien un _label_ de variable globale, dans le cas d'une référence vers une
  variable globale
* ou bien la position sur la pile d'un argument passé par référence

La surcharge des fonctions est implémentée en modifiant l'identifiant de la
fonction, pour lui assigner un identifiant unique. Une table réalise alors la
correspondance entre les identifiants dans le code et les identifiants
modifiés. Cette table est consultée pour trouver les fonctions à appeler, en
fonction des arguments.

Pour générer des identifiants uniques, j'ai exploité les caractères interdits
dans la spécification de MiniC++. En particulier, un identifiant ne pouvant
commencer par un symbole underscore, il est très facile d'obtenir un
identifiant dont on est sûr qu'il ne sera pas utilisé par ailleurs en
commençant par un underscore.

Enfin, la vérification qu'il existe une et une seule fonction `main()` est
effectuée grâce à une référence globale de type booléen. Cette variable est
fausse initialement et passée à vraie si on rencontre une fonction `main()`. Si
on rencontre une deuxième fonction `main()`, une erreur est levée. Avant de
passer la main au compilateur, on vérifie que cette variable est bien vraie.
J'utilise également une référence globale de type booléen pour stocker la
présence ou non d'une directive de préprocesseur pour inclure `iostream` et
ainsi pouvoir utiliser `std::cout`.

### Compilateur

J'utilise le schéma de compilation suggéré par l'énoncé. Je passe les arguments
sur la pile et n'utilise que 4 registres :

* _a0_ pour les valeurs de retour
* _a1_, _t0_ et _t1_ pour des étapes de calcul intermédiaires

Pour la compilation des références au sein d'une instruction, je crée juste un
alias de l'ancienne variable. Ainsi, dans le cas d'une référence vers une
variable globale, la nouvelle variable aura le même _label_ que l'ancien
variable. Dans le cas d'une référence vers une variable locale, la position
stockée pour la nouvelle variable sera la même que celle de l'ancienne
variable.

Pour la compilation du passage par référence, j'ai regardé le code produit par
`g++`. Celui-ci traite les références comme du ``sucre syntaxique'' pour du
passage de pointeurs par valeur. C'est donc le comportement que j'ai reproduit.
J'identifie les arguments passés par référence au moment du typage et passe
alors, non pas la valeur de la variable, mais un pointeur vers cette variable
en argument de la fonction. Je déréférence alors ce pointeur à chaque
utilisation dans la fonction.

Pour l'assignation de variables, la structure de mon code m'a obligé à
distinguer les assignations possibles pour les traiter différemment, ce qui ne
semble pas optimal et a ralenti l'implémentation de certaines structures,
notamment les fonctions qui renvoient une référence.

Les objets déclarés localement sont alloués sur la pile, comme les variables
locales. La taille de chaque variable est gardée, aux côtés de sa position,
afin de pouvoir calculer facilement les _offsets_ et allouer assez de mémoire.
Les objets et les variables globales sont alloués sur le tas. Le mot-clé `new`
alloue de la mémoire sur le tas, par un appel système. Cette mémoire n'est pas
récupérée, faute d'appel système MIPS pour le faire.

La compilation des boucles et des tests est réalisée de la façon décrite dans
le cours.

Pour l'instruction `return`, il convient de vérifier si cette instruction est
dans la fonction `main()` ou dans une autre fonction. En effet, l'appel système
à effectuer est différent selon qu'on est dans la fonction `main()` ou pas.

## Bugs connus et structures non implémentées

Le typeur et le compilateur ont été codés en parallèle et donc tout ce qui est
correctement typé devrait compiler. Le code du typeur et du compilateur est
assez lourd, ayant été écrit pour un sous-ensemble du langage que j'ai étendu
au fur et à mesure. Ainsi, certains choix initiaux n'ont vraiment pas été
optimaux et ont fortement ralenti l'implémentation des dernières structures du
langage. En particulier, certains morceaux de code sont redondants et
pourraient être regroupés en un seul bout de code global pour traiter tous les
cas (notamment pour la distinction de traitement fonction / méthode ou de
l'assignation de variables, dans le compilateur). Certaines de ces structures
n'ont pas pu être implémentées, faute de temps :
* Fonctions qui renvoient un référence (int &f())
* Classes
    * Instanciation de classes globales (objet global)
    * Passage d'arguments au constructeur
    * Vérification que le constructeur a bien le bon nombre d'argument et de
      bons types
    * Méthodes
    * Héritage (multiple)

* Tests de typing qui sont censés échouer:
    * good/subtype2,3
    * bad/subtyping1
    * bad/extra-qualification1
    * bad/overload1
* Test d'exécution qui sont censés échouer:
    * ref6.cpp
