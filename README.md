# Campus Numérique - Dev Log - Car Game  

Bienvenue dans le projet **Car Game Lesson** !

Ce projet est pensé pour faire découvrir les premieres lignes de codes. Ce n'est pas un véritable sujet mais un format live coding. 

## Etape 5

Ajout d'une vitesse variable.

On remplace la vitesse actuelle

    float vitesse_depart = 4;
    float vitesse_finale = 4;

et dans maj_fond

    vitesse_finale = vitesse_depart + millis()/10000;
    pos_fond = pos_fond + vitesse_finale ;


On laisse compiler pour montrer que le code est cassé.
On prend le temps d'expliquer le concept de refactor

