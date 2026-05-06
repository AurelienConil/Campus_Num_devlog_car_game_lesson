# Campus Numérique - Dev Log - Car Game  

Bienvenue dans le projet **Car Game Lesson** !

Ce projet est pensé pour faire découvrir les premieres lignes de codes. Ce n'est pas un véritable sujet mais un format live coding. 

## Etape 3

On déssine des voitures, une à droite, qui roule dans le sens du joueur, et une à gauche qui roule en sens contraire.

On peut commencer avec une seule voiture

    float pos_voiture_droite_x = 180;
    float pos_voiture_droite_y = -200;


    float largeur_voiture = 80;
    float hauteur_voiture = 160;


On définit la fontion de dessin

    void dessiner_voiture() {

    rect(pos_voiture_droite_x, pos_voiture_droite_y, largeur_voiture, hauteur_voiture);

    }

Puis la fonction de mise à jour

    void maj_voiture() {

    //DROITE
    pos_voiture_droite_y = pos_voiture_droite_y + vitesse - 2;

    if (pos_voiture_droite_y > height) {
        pos_voiture_droite_y = -400;
        
    }

    }


On prend le temps d'expliquer que si on avait

    pos_voiture_droite_y = pos_voiture_droite_y + vitesse

La voiture serait "fixe", par rapport à la route

On introduit aussi un leger mouvement random à chaque retour.

    pos_voiture_droite_x = random(150, 200 );



On finit enssuite par un gros copier-coller pour la voiture de gauche.





