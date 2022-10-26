int x = 0;
int n = 850;

void setup() {
  size(1000, 1000);
}

void draw() {
  background (0,100,0);
  fill(#4B0082);
  circle(100,n, 100); 
  n = n - 1;
  
  fill(0,0,100);
  square (x,0,100);
  x=x+1;
 
  
  
}
