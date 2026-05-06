float vitesse = 3;
float pos_fond = 0;

float pos_joueur_x = 200;
float pos_joueur_y = 200;

float pos_voiture_droite_x = 180;
float pos_voiture_droite_y = -200;

float pos_voiture_gauche_x = 30;
float pos_voiture_gauche_y = -400;

float largeur_voiture = 80;
float hauteur_voiture = 160;



void setup() {
  size(300, 480);
}

void draw() {
  background(80);
  maj_fond();
  dessiner_fond();

  maj_joueur();
  dessiner_joueur();

  maj_voiture();
  dessiner_voiture();

}

void maj_fond() {
  
  pos_fond = pos_fond + vitesse ;

  if (pos_fond > 480) {
    pos_fond = 0;
  }
}

void dessiner_fond() {


  // Bandes blanches au centre
  fill(255);
  noStroke();
  rect(width / 2 - 8, pos_fond+400, 16, 40);
  rect(width / 2 - 8, pos_fond+320, 16, 40);
  rect(width / 2 - 8, pos_fond+240, 16, 40);
  rect(width / 2 - 8, pos_fond+160, 16, 40);
  rect(width / 2 - 8, pos_fond+80, 16, 40);
  rect(width / 2 - 8, pos_fond, 16, 40);
  rect(width / 2 - 8, pos_fond - 80, 16, 40);
  rect(width / 2 - 8, pos_fond - 160, 16, 40);
  rect(width / 2 - 8, pos_fond - 240, 16, 40);
  rect(width / 2 - 8, pos_fond - 320, 16, 40);
  rect(width / 2 - 8, pos_fond - 400, 16, 40);
  rect(width / 2 - 8, pos_fond - 480, 16, 40);

  fill(255, 0, 0);
  circle(width/2, pos_fond, 10);
}


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

  // Gravité : ramène le joueur vers le bas
  if (pos_joueur_y < 400) {
    pos_joueur_y = pos_joueur_y + (vitesse / 4);
  }
 
}

void dessiner_joueur() {
  noStroke();
  fill(255, 0, 0); // Couleur rouge 
  circle(pos_joueur_x, pos_joueur_y, 30);
}

void maj_voiture() {

  //DROITE
  pos_voiture_droite_y = pos_voiture_droite_y + vitesse - 2;

  if (pos_voiture_droite_y > height) {
    pos_voiture_droite_y = -400;
    pos_voiture_droite_x = random(150, 200 );
  }

  //pos_voiture_gauche_y
  pos_voiture_gauche_y = pos_voiture_gauche_y + vitesse + 3;
  if (pos_voiture_gauche_y > height) {
    pos_voiture_gauche_y = -800;
    pos_voiture_gauche_x = random(10, 70); 
  }
}


void dessiner_voiture() {

  rect(pos_voiture_droite_x, pos_voiture_droite_y, largeur_voiture, hauteur_voiture);
  rect(pos_voiture_gauche_x, pos_voiture_gauche_y, largeur_voiture, hauteur_voiture);
}