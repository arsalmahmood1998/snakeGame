PVector snakeStartLocation;
PVector circleLocation;
PVector snakedWidth;
int score=0;
color myColor=color(random(255), random(255), random(255));
void setup() {
  size(600, 600);
  textSize(20);
  snakeStartLocation =new PVector(random(width-100), random(height-100));
  snakedWidth=new PVector(snakeStartLocation.x+100, snakeStartLocation.y);
  circleLocation=new PVector(random(10,width-20), random(10,height-20));
}
void draw() {
  background(0);
  drawGame();
  playGame();
}
void drawGame() {
  pushStyle();
  textSize(50);
  fill(myColor);
  text("Snakes",250,50);
  textSize(30);
  text("Score="+" "+score,50,50);
  stroke(myColor);
  stroke(red(myColor), green(myColor), blue(myColor), 100);
  strokeWeight(5);
  line(snakeStartLocation.x, snakeStartLocation.y, snakedWidth.x, snakedWidth.y);
  fill(myColor);
  circle( circleLocation.x, circleLocation.y, 20);
  popStyle();
}
