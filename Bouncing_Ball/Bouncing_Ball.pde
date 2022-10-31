int x = 200;
int k = 1;

int dx = 1;
int dy = 4;
void setup(){
  size(600,600);
}

void draw(){
  background(100);
  circle(x,k,200);
  x=x+k;
  if (x == 600) {
    k = k-1;
  }
  if (x <= 1) {
    k=1;
  
    
  }
}
