class Bullet extends Floater{
  public Bullet(Spaceship theShip){
  myCenterX = theShip.getCenterX();
  myCenterY = theShip.getCenterY();
  myXspeed = theShip.getXspeed();
  myYspeed = theShip.getYspeed();
  myPointDirection = theShip.getPointDirection();
  accelerate(.6);
  }
  public void show(){
    fill(255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY,5,5);
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
