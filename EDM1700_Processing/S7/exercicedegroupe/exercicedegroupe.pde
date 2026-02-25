void setup() {
  size(800, 800);
  background(#97E3F5);
}

void draw(){
  drawFloor(0, height/1.5, width, 300);
  mainHouse(width/2, height/1.5, 200, 200);
  porte(width/2, height/2, 150, 130);
  
}

// - AIDEN -
float drawFloor(float x, float y, float w, float h) {
  noStroke();
  fill(#78D87E);
  
  rect(x, y, w, h);
  
  int varTriangleX1 = -10;
  int varTriangleX2 = 0;
  int varTriangleX3 = 30;
  for(int i = 1; i < 30; i++) {
    triangle(x+varTriangleX1, y-30, x+varTriangleX2,y, x+varTriangleX3,y);
    varTriangleX1 += 40;
    varTriangleX2 += 40;
    varTriangleX3 += 40;
  }
  return(x);
}

// - ALEX -
void mainHouse(float x, float y, float w, float h) {
  noStroke();
  rectMode(CENTER);
  // wall
  fill(#FAD890); // beige walls
  rect(x, y, w, h);
  // roof
  fill(#F73C3C); // red mush
  ellipse(x, y*0.7, w*2, h*1.5);
  fill(#EDEDED); // white mush
  ellipse(x, y*0.7, w*1.25, h*1.25);
  // chimney
  fill(#BCBCBC); // grey chimney
  rect(x*1.25, y*0.4, w/4, h*0.5);
  rectMode(CORNER);
  
}

// - KALEB -
void porte(float x, float y, float w, float h) {

  float rectX = x-60;
  float rectY = y+110;
  float rectSize1 = w/1.25;
  float rectSize2 = h/1.25;
  float handleX = x+30;
  float handleY = 580; 
  
  stroke(#C68534);
  fill(#9D6B2C);

  rect(rectX, rectY, rectSize1, rectSize1, 150, 150, 28, 28);
 
  pushMatrix();
    translate(10, 10);
    fill(#9B682A);
    rect(rectX, rectY, rectSize2, rectSize2, 150, 150, 28, 28);
  popMatrix();
 
  fill(#C68534);
  circle(handleX, handleY, 30);

}
