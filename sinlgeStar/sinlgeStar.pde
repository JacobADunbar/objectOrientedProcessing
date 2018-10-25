private Boolean start = false;
private Star[] stars = new Star[Star.getStarCount()]; //only varaibles is how many stars to draw

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);

  //Need drawing of ball before mouseClick(), two lines of the same code

  createStars();
} //End of setup()

public void draw() {
  startStop();

  if (start==true) {

    background(0);



    for (int i = 0; i < stars.length; i++) {
      ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    }
    //println ("Pong Ball Coordinates", stars[1-Star.starCount].getX(), stars[1-Star.starCount].getY(), stars[1-Star.starCount].getRadius());
  } //End of startStop
} //End draw()

public void mouseClicked() {

  createStars();
} //End of mouseClicked()
