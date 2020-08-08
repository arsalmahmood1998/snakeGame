void playGame() {
  if (keyPressed && key==CODED) {
    if (keyCode==UP) {
      snakeStartLocation.y-=2;
      snakedWidth.y-=2;
    }
    else if (keyCode==DOWN) {
      snakeStartLocation.y+=2;
      snakedWidth.y+=2;
    }
    else if (keyCode==LEFT) {
      snakeStartLocation.x-=2;
      snakedWidth.x-=2;
    } 
    else if (keyCode==RIGHT) {
      snakeStartLocation.x+=2;
      snakedWidth.x+=2;
    }
  }

  boolean collision=false;
  float firstDistance=dist( snakeStartLocation.x, snakeStartLocation.y, circleLocation.x, circleLocation.y);
  float secondtDistance=dist( snakedWidth.x, snakedWidth.y, circleLocation.x, circleLocation.y);
  if (firstDistance<=10 ||secondtDistance<=10 ) {
    snakedWidth.x+=20;
    collision=true;
  }

  if (collision) {
    circleLocation.x=random(width-20);
    circleLocation.y=random(height-20);
  }
  if (collision) {
    score+=2;
  }
}
