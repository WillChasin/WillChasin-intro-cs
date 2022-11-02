int x = 50;
int y = 60;
int dx = 33;
int dy = 22;
void setup(){
  size(600,600);
}

void draw(){
  background(100);
  circle(x,y,60);
  x=x+dx;
  y=y+dy;
  if (x >= width) {
   dx = -dx;
  }
  
  else if (x<=0) {
    dx=-dx;
  
  }
  if (y >= height) {
    dy = -dy;  
  }
  else if (y<=0){
  dy = -dy; }
}
