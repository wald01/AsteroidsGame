class Asteroid extends Floater {
  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(100);   //white 
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates   
    myXspeed = 0.2;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the asteroid is pointing in degrees 
  }
  public void setSpeed(double xSpeed, double ySpeed){
    myXspeed = xSpeed;
    myYspeed = ySpeed;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
