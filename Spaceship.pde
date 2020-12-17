class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;   //white spaceship
    myCenterX = 250;
    myCenterY = 250; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
    }
    public void setXspeed(double x){ //setter
      myXspeed = x;
    }
    public void setYspeed(double y){ //setter
      myYspeed = y;
    }
    //public void addXspeed(int x){ //setter
      //myXspeed += x;
    //}
    //public void addYspeed(int y){ //setter
      //myYspeed += y;
    //}
    public void hyperSpace(){
      myCenterX = Math.random()*401;
      myCenterY = Math.random()*401;
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public double getPointDirection(){
      return myPointDirection;
    }
}
