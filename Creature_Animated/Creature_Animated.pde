int r = 0;
int n = 0;
int dx = 1;
int dy = 1;
boolean flag = true;
void setup() { // called once

  size(600,600);
  background(0,200,255);
}

void draw() { // called in a loop
background(0,200,255);
fill(255); //white
circle(50,n,70); //eye
fill (0); //black
circle(50,n,25); //pupil

fill(255); //white
circle(100,n,70); //eye
fill (0); //black
circle(100,n,25); //pupil
n=n+dx;

if (n >= 600) {
  dx = -dx;
}

if (n == 0) {
  dx = 1;
}

translate(300,300);
  rotate(radians(r));
  r=r+dy;
  
fill(0,255,0); //green
circle(75,70,150); //head

triangle(70,110,50,100,110,100); //nose

ellipse(80,125,90,10); //mouth

rect(50,145,55,140); //body

fill(255,0,0); //red
rect(30,145,10,70); //arm
fill(255,0,0); //red
rect(115,145,10,70); //arm

fill(0,255,0); //green
rect(30,300,10,140); //leg
fill(0,255,0); //green
rect(115,300,10,140); //leg

stroke(255,255,255); //white outline





}
