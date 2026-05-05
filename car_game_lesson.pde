float vitesse = 3;
float pos_fond = 0;



void setup() {
  size(300, 480);
}

void draw() {
  background(80);
  maj_fond();
  dessiner_fond();

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
