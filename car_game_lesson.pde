float vitesse = 3;
float pos_fond = 0;

float pos_joueur_x = 200;
float pos_joueur_y = 200;



void setup() {
  size(300, 480);
}

void draw() {
  background(80);
  maj_fond();
  dessiner_fond();

  maj_joueur();
  dessiner_joueur();

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