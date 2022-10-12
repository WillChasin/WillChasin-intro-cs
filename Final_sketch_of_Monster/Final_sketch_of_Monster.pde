/*
*Will Chasin
*3/10/22
*This is my monster Stickmonster
*He has sticks for his red arms and green legs
*He has a big smiling mouth
*His nose is a triangle
*His eyes overlap and are very big
*His body is a very thick stick 
*His head is a big circle stick and lays on top of the thick stick of a body
*/

void setup() { // called once

  size(600,600);
  background(0,200,255);
}

void draw() { // called in a loop

fill(0,255,0); //green
circle(75,70,150); //head

fill(255); //white
circle(50,50,70); //eye
fill (0); //black
circle(50,50,25); //pupil

fill(255); //white
circle(100,50,70); //eye
fill (0); //black
circle(100,50,25); //pupil

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
