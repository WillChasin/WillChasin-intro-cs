String userChoice = "Not Chosen";
int rand;
String computerChoice = "Not Chosen";

void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  background (255);
  fill (255);
  if (userChoice == "Rock") {
    fill(250, 0, 0);
  }


  rect(width / 3 - 50, 100, 100, 50);
  fill(255);
  if (userChoice == "Paper") {
    fill(0, 250, 0);
  }
  rect(width / 3 + 100, 100, 100, 50);
  fill(255);

  if (userChoice == "Scissors") {
    fill(0, 0, 250);
  }
  rect(width / 3 + 250, 100, 100, 50);

  fill (0);
  text("Rock", width / 3 - 50, 140);
  text("Paper", width / 3 + 100, 140);
  text("Scissors", width / 3 + 250, 140);

  text("Computer:", 100, 400);
  text(computerChoice, 300, 400);

  if (userChoice == "Rock" && computerChoice == "Scissors") {
    text("You Win", 200, 500);
  }
  if (userChoice == "Rock" && computerChoice == "Paper") {
    text("You Lose", 200, 500);
  }
  if (userChoice == "Rock" && computerChoice == "Rock") {
    text("Draw", 200, 500);
  }
  if (userChoice == "Paper" && computerChoice == "Rock") {
    text("You Win", 200, 500);
  }
  if (userChoice == "Paper" && computerChoice == "Scissors") {
    text("You Lose", 200, 500);
  }
  if (userChoice == "Paper" && computerChoice == "Paper") {
    text("Draw", 200, 500);
  }
  if (userChoice == "Scissors" && computerChoice == "Paper") {
    text("You Win", 200, 500);
  }
  if (userChoice == "Scissors" && computerChoice == "Rock") {
    text("You Lose", 200, 500);
  }
  if (userChoice == "Scissors" && computerChoice == "Scissors") {
    text("Draw", 200, 500);
  }
}
  void mousePressed() {

    if (mouseX > width / 3 - 50 && mouseX < width / 3 + 50 && mouseY > 100 && mouseY < 150) {
      userChoice = "Rock";
      rand = (int) random(3);
    } else if (mouseX > width / 3 + 50 && mouseX < width / 3 + 150 && mouseY > 100 && mouseY < 150) {
      userChoice = "Paper";
      rand = (int) random(3);
    } else if  (mouseX > width / 3 + 200 && mouseX < width / 3 + 300 && mouseY > 100 && mouseY < 150) {
      userChoice = "Scissors";
      rand = (int) random(3);
    } else {
      userChoice = "Not Chosen";
    }
    if (rand == 0) {
      computerChoice = "Rock";
    } else if (rand == 1) {
      computerChoice = "Paper";
    } else if (rand == 2) {
      computerChoice = "Scissors";
    }
    println(userChoice);
  }
