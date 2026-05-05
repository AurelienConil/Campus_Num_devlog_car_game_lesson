# Campus Numérique - Dev Log - Car Game  

Bienvenue dans le projet **Car Game Lesson** !

Ce projet est pensé pour faire découvrir les premieres lignes de codes. Ce n'est pas un véritable sujet mais un format live coding. 

## Etape 1

Mise en place du fond animé.

### Etape 1.1

Mise en place du code

    void setup() {
        size(300, 480);
    }

    void draw() {
    background(80);
    }

On explique la différence entre setup() et draw()


### Etape 1.2

Création de la fonction 

    dessiner_fond()

On créé des bandes blanches fixes. En explicant ce qu'est un rectangle, x et y

    fill(255);
    noStroke();
    rect(width / 2 , 400, 16, 40);
    rect(width / 2 , 320, 16, 40);


### Etape 1.3

On précise le concept de variable avec pos_fond
Elle est définit au début et reste fixe à ce stade

    fill(255);
    noStroke();
    rect(width / 2 - 8, pos_fond+400, 16, 40);
    rect(width / 2 - 8, pos_fond+320, 16, 40);
    rect(width / 2 - 8, pos_fond+240, 16, 40);
    rect(width / 2 - 8, pos_fond+160, 16, 40);
    rect(width / 2 - 8, pos_fond+80, 16, 40);

On relance plusieurs fois avec differentes valeur de pos_fond pour montrer les variations

### Etape 1.4

Mise en place de l'animation à l'aide de la fonction 

    void maj_fond() {
    
        pos_fond = pos_fond + vitesse ;

        if (pos_fond > 480) {
            pos_fond = 0;
        }
    }


On utilise un petit point rouge de debug dans dessiner_fond

    fill(255, 0, 0);
    circle(width/2, pos_fond, 10);


### Etape 1.5

On complete les rectangle pour obtenir une homogeneité dans le mouvement. Pour cela le tricks est la hateur entre les rectangles est de 80, un multiple de la hauteur totale 480. On a donc 6 bandes visibles. Note : on pourrait aussi limiter le déplacement à un espacement de bande puis revenir à zéro, l'illusion serait la même plutot que parcourir tout l'écran.
