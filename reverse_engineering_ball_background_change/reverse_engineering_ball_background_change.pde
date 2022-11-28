int x = 50;
int y = 60;
int r = 0;
int g = 0;
int b = 0;
int dx = 5;
int dy = 6;
void setup(){
  size(600,600);
}

void draw(){
  background(r, g, b);
  circle(x,y,50);
  x=x+dx;
  y=y+dy;
  if (x >= width) {
   dx = -dx;
   r = 0;
   b=0;
   g = 255;
  }
  
  else if (x<=0) {
    dx=-dx;
    r= 255;
  g = 0;
  b = 0;
  }
  if (y >= height) {
    dy = -dy;
    r = 255;
    b=255;
    g=255;
  }
  else if (y<=0){
  dy = -dy; 
 r = 0;
  b = 255;
  g = 0;}
  
 
}
