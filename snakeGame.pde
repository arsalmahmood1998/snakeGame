PVector snakeStartLocation;
PVector circleLocation;
PVector snakedWidth;
int score;
color myColor=color(random(255), random(255), random(255));
boolean gameOver;
void setup() {
  size(600, 600);
  score=0;
  snakeStartLocation =new PVector(random(width-100), random(height-100));
  snakedWidth=new PVector(snakeStartLocation.x+100, snakeStartLocation.y);
  circleLocation=new PVector(random(10, width-20), random(10, height-10));
}
void draw() {
  background(0);
  drawGame();
  playGame();
}
void drawGame() {
  pushStyle();
  textSize(50);
  fill(255);
  text("Snakes", 250, 50);
  textSize(30);
  text("Score="+" "+score, 50, 50);
  stroke(myColor);
  stroke(red(myColor), green(myColor), blue(myColor), 100);
  strokeWeight(5);
  line(snakeStartLocation.x, snakeStartLocation.y, snakedWidth.x, snakedWidth.y);
  fill(myColor);
  circle( circleLocation.x, circleLocation.y, 20);
  popStyle();
  gameOver=gameEnd();
  if (gameOver) {
    fill(255, 0, 0);
    strokeWeight(5);
    textSize(30);
    text("Game Over"+" "+"Your Score="+" "+score, 50, height/2);
  }
}
