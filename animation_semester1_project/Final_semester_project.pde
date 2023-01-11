//My animation represents the game pong.
//My animation has a moving ball that bounces on every wall except for the right wall
//You have a blocker that you move with your mouse that prevents the ball from going
//through the right wall
//If the ball goes through the wall, you lose!
//Each time the ball hits the blocker, your score increases by 1, so you are trying to get
//the highest score possible!
//At first, I couldn't think of what my randomness should be.
//Originally, it was going to be random balls appearing in the background, but that
//Interfeared with the game ball, so I switched it to the speed of the ball and the
//effect of when the ball hits the blocker
//I wanted to create for this project a simple, easy, and fun game to code, and I realized
//pong was the perfect game!

boolean gameStart = false;

float x = 250;
float y = 250;
float movingX = random(6, 9);
float movingY = random(6, 9);
int a = 255;
int b = 255;
int hitSize = 150;
float diamHit;
String text = "";
int s = 0;
int red = 0;
int blue = 0;
int green = 0;
void setup() {
  size(500, 500);
}
void draw() {
  background(0);

  fill(red, green, blue);
  red = (int)random(255);
  green = (int)random(255);
  blue = (int)random(255);
  ellipse(x, y, 20, 20);

  fill(red, green, blue);
  red = (int)random(255);
  green = (int)random(255);
  blue = (int)random(255);
  rect(width-20, mouseY-hitSize, 10, 150);
  fill(255);


  if (gameStart) {

    x = x + movingX;
    y = y + movingY;
  }
  if ( x > width-25 && x < width-15 && y > mouseY-hitSize && y < mouseY) {
    movingX = -movingX;
    b = 0;
    s = s + 1;
  } else if (x < 5) {
    movingX = -movingX;
    x = x + movingX;
    a = 0;
  } else {
    a = 255;
    b = 255;
  }

  if (x > width) {
    gameStart = false;
    x = 150;
    y = 150;
    text = "You Lose!";
    movingX = random(6, 9);
    movingY = random(6, 9);
    hitSize = 150;
    s = 0;
  }


  if ( y > height || y < 0) {
    movingY = -movingY;
    y = y + movingY;
  }

  textSize(50);
  text(text, 150, 250);
  text(s, 225, 100);
}

void mousePressed() {
  gameStart = true;
  text = "";
}
