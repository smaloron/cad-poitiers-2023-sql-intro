/*
Modéliser une application de création pizza
- Une pizza possède un nom
- Une pizza doit avoir des ingrédients
- Le même ingrédient peut être pour plusieures pizzas
- La même pizza peut être proposée dans des tailles différentes (petit, moyen, grand)

Prix de la pizza
- la taille indique un prix de base
- on fait ensuite la somme du prix des ingrédients
- On applique à la somme du prix des ingrédients un coefficient multiplicateur qui dépent de la taille
par exemple petit : 1, moyenne : 1.5, grande : 2

Faire une requête qui affiche toutes les pizzas dans toutes les tailles possibles avec leur tarif

Tables
pizzas
ingredients_pizzas
recettes_pizza
tailles_pizza
*/