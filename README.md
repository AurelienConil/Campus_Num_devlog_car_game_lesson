# Campus Numérique - Dev Log - Car Game  

Bienvenue dans le projet **Car Game Lesson** !

Ce projet est pensé pour faire découvrir les premieres lignes de codes. Ce n'est pas un véritable sujet mais un format live coding. 

## Etape 2

## Etape 2.1

On introduit 2 nouvelles variables

    float pos_joueur_x = 200;
    float pos_joueur_y = 200;

Ainsi qu'une nouvelle fonction

    dessiner_joueur();

On peut en profiter pour discuter des couleurs


## Etape 2.2

Mis en mouvement du joueur. A cette étape, la partie "gravité" est ignoré. Il faut toutefois prendre le temps d'expliquer ici le principe d'un IF

    void maj_joueur() {


        if (keyPressed) {
            
            if (keyCode == LEFT) {
            println("Flèche gauche appuyée");
            pos_joueur_x = pos_joueur_x - 5;
            }
            if (keyCode == RIGHT) {
            println("Flèche droite appuyée");
            pos_joueur_x = pos_joueur_x + 5;
            }
            if (keyCode == UP) {
            println("Flèche haut appuyée");
            pos_joueur_y = pos_joueur_y - 5;
            }
            if (keyCode == DOWN) {
            println("Flèche bas appuyée");
            pos_joueur_y = pos_joueur_y + 5;
            }
        }

    
    }

On le présente en français : Si une touche est appuyé et que la derniere touche appuyée ( keyCode ) est : "gauche", alors on va à gauche

On en profite aussi pour introduire le println et voir le resultat dans la console.

