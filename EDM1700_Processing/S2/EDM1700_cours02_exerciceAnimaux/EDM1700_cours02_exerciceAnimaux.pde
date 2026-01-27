// écran et couleur  de fond - - - - - - - - - - - - - - - - - - - - 
size(800,800);
background(107, 203, 214);

// forme de la queue - - - - - - - - - - - - - - - - - - - - - - - - 
noStroke();
fill(235, 174, 96);
arc(600, 600, 300, 400, 0, HALF_PI, PIE);
arc(800, 600, 200, 300, PI, PI+HALF_PI);
fill(107, 203, 214);
arc(550, 600, 300, 400, 0, HALF_PI, PIE);
arc(900, 600, 300, 400, PI, PI+HALF_PI);

// forme générale du chat  - - - - - - - - - - - - - - - - - - - - -
fill(235, 174, 96);
noStroke();
ellipse(width/2, height/2, 300, 300);
ellipse(width/2, 750, 500, 500);
triangle(600, 200, 450, 260, 540, 400);
triangle(220, 200, 350, 260, 250, 400);

// forme des yeux  - - - - - - - - - - - - - - - - - - - - - - - - -
fill(115, 79, 38); // fond brun
ellipse(330, 370, 90, 50);
ellipse(470, 370, 90, 50);

fill(136, 179, 89); // yeux verts
ellipse(330, 370, 60, 60);
ellipse(470, 370, 60, 60);

fill(0); // puilles noires
ellipse(330, 370, 20, 60);
ellipse(470, 370, 20, 60);

fill(235, 174, 96); // overlay orange du chat
ellipse(330, 400, 100, 50);
ellipse(470, 400, 100, 50);

// nez et bouche - - - - - - - - - - - - - - - - - - - - - - - - - - 
fill(207, 126, 162);
triangle(400, 430, 380, 400, 420, 400);

stroke(207, 126, 162);
strokeWeight(4);
noFill();
arc(350, 420, 100, 60, 0, PI);
arc(450, 420, 100, 60, 0, PI);
