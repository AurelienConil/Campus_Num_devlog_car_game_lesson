# Campus Numérique - Dev Log - Car Game  

Bienvenue dans le projet **Car Game Lesson** !

Ce projet est pensé pour faire découvrir les premieres lignes de codes. Ce n'est pas un véritable sujet mais un format live coding. 

## Etape 4

On va parler de la collision.

On introduit la variable booleenne, et les operateurs booleens dans le if

### Detection de collision


    if ( pos_joueur_x > pos_voiture_droite_x 
    && pos_joueur_x < (pos_voiture_droite_x + largeur_voiture )
    && pos_joueur_y > pos_voiture_droite_y
    && pos_joueur_y < (pos_voiture_droite_y + hauteur_voiture )
    ){
      
     jeu_termine = true; 

    }
    


On prend le temps d'expliquer qu'est ce que ça veut dire qu'un point est dans un carré. On explique bien que la largeur, le diamètre du joueur n'est pas pris en compte. Il faudrait en quelque sorte rajouter des "marges" pour que ça soit crédible.


Il est relativement facile d'expliquer le && dans un cas comme celui ci.

### affichage du game over

On parle alors de la variable booléenne jeu_termine

On parle aussi de if 

Exercie relativement esthétique, après un épisode algorithmique. On explique l'alpha avec

  fill(0, 0, 0, 200);

On laisse aussi les élèves personnaliser à leur guise

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("GAME OVER", width/2, height/2 - 30);






