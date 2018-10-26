private Boolean start = false;
private Ball[] ball = new Ball[Ball.getBallCount()];

public int ballX;
public int ballY;

public void setup() {
  size(1000, 900);
  screenSizeChecker();
  ellipseMode(RADIUS);

  ballX = width/2;
  ballY = height/2;

  for (int i = 0; i < ball.length; i++) {
    createBall(i);
  }
}

public void draw() {
  startStop();

  if (start == true) {
    for (int i = 0; i < ball.length; i ++) {
      ball[i].move();
      background(146);
      ellipse(ball[i].getX(), ball[i].getY(), ball[i].getRadius(), ball[i].getRadius());
    }
  }
}