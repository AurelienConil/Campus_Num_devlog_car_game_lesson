// Variables du jeu
float vitesse_depart = 6;
float vitesse_finale = 6;
float pos_fond = 0;

float pos_joueur_x = 200;
float pos_joueur_y = 200;

float pos_voiture_droite_x = 180;
float pos_voiture_droite_y = -200;

float pos_voiture_gauche_x = 30;
float pos_voiture_gauche_y = -400;

boolean jeu_termine = false;
float rayon_joueur = 15;
float largeur_voiture = 80;
float hauteur_voiture = 160;


void settings() {
  size(300, 480);
}

void setup() {
}

void draw() {
  background(255);
  maj_fond();
  dessiner_fond();

  maj_joueur();
  dessiner_joueur();

  maj_voiture();
  dessiner_voiture();

  detecter_collision();

  if (jeu_termine) {
    afficher_game_over();
  }
}

void maj_fond() {
  
  vitesse_finale = vitesse_depart + millis()/10000;
  
  
  print("vitesse : ");
  println(vitesse_finale);
  
  
  pos_fond = pos_fond + vitesse_finale ;

  if (pos_fond > 480) {
    pos_fond = 0;
  }
}

void dessiner_fond() {
  // Fond gris (route)
  fill(80);
  rect(0, 0, width, height);

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
    pos_joueur_y = pos_joueur_y + (vitesse_finale / 4);
  }
 
}

void dessiner_joueur() {
  noStroke();
  fill(255, 0, 0); // Couleur rouge (voiture du joueur)
  circle(pos_joueur_x, pos_joueur_y, 30);
}


void maj_voiture() {

  //AVANT
  pos_voiture_droite_y = pos_voiture_droite_y + vitesse_finale - 2;

  if (pos_voiture_droite_y > height) {
    pos_voiture_droite_y = -400;
    pos_voiture_droite_x = random(150, 200 );
  }

  //ARRIERE
  pos_voiture_gauche_y = pos_voiture_gauche_y + vitesse_finale + 3;
  if (pos_voiture_gauche_y > height) {
    pos_voiture_gauche_y = -800;
    pos_voiture_gauche_x = random(10, 70); 
  }
}

void dessiner_voiture() {

  rect(pos_voiture_droite_x, pos_voiture_droite_y, largeur_voiture, hauteur_voiture);
  rect(pos_voiture_gauche_x, pos_voiture_gauche_y, largeur_voiture, hauteur_voiture);
}

void detecter_collision() {
  
  //Collision 
  
  

    // Test collision avec voiture droite
    if ( pos_joueur_x > pos_voiture_droite_x 
    && pos_joueur_x < (pos_voiture_droite_x + largeur_voiture )
    && pos_joueur_y > pos_voiture_droite_y
    && pos_joueur_y < (pos_voiture_droite_y + hauteur_voiture )
    ){
      
     jeu_termine = true; 
    }
    
    // Test collision avec voiture gauche
    if ( pos_joueur_x > pos_voiture_gauche_x 
    && pos_joueur_x < (pos_voiture_gauche_x + largeur_voiture )
    && pos_joueur_y > pos_voiture_gauche_y
    && pos_joueur_y < (pos_voiture_gauche_y + hauteur_voiture )
    ){
      
     jeu_termine = true; 
    }
    
    
    
     
}



void afficher_game_over() {
  fill(0, 0, 0, 200);
  rect(0, 0, width, height);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("GAME OVER", width/2, height/2 - 30);

}
