float xCenter = 300;
float yBottom = 550;
float w = 100; 
void setup (){
  size(600,600);
}

void draw(){
 fill(0);
 stroke(0);
   rect(0, 550, 600, 50);
  stroke(255, 255, 0);
  strokeWeight(4);
  for (int i = 0; i < 600; i += 50) {
    line(i, 550, i+25, 575);
  }
 fill(#808080);

  building(300, 550, 100, 200);
  building(100,520,135,230);
  
}

void building(
float xCenter,
float yBottom,
float w , float h
) {
  stroke(255);
    rect(xCenter - w/2, yBottom - 200, w, h);
    strokeWeight(4);
    stroke(0);
rect(xCenter-50, yBottom-55, w/3, h/3);
}
