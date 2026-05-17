# Campus Numérique - Dev Log - Car Game  

Bienvenue dans le projet **Car Game Lesson** !

Ce projet est pensé pour faire découvrir les premieres lignes de codes. Ce n'est pas un véritable sujet mais un format live coding. 

## Etape 6

On ajoute maintenant des images pour rendre le jeu plus réaliste.
Par soucis de facilité on fait 2 images pour les voitures. La rotation étant compliqué sur processing.



    PImage image_voiture_droite;
    PImage image_voiture_gauche;
    PImage image_joueur;

On assigne ces variables à des vrai images

    image_voiture_droite = loadImage("car_right.png");
    image_voiture_gauche = loadImage("car_left.png");
    image_joueur = loadImage("player.png");

Enfin on les dessine à l'aide de la fonction image

    void dessiner_joueur() {
        image(image_joueur, pos_joueur_x-20, pos_joueur_y);
        noStroke();
        fill(255, 0, 0); // Couleur rouge 
        circle(pos_joueur_x, pos_joueur_y, 30); 

    }

    void dessiner_voiture() {

        image(image_voiture_droite, pos_voiture_droite_x, pos_voiture_droite_y, largeur_voiture, hauteur_voiture);
        image(image_voiture_gauche, pos_voiture_gauche_x, pos_voiture_gauche_y, largeur_voiture, hauteur_voiture);

    }



