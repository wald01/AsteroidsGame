class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = 255;   //white spaceship
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates   
    myXspeed = 1;
    myYspeed = 1; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
    }
    public void setXspeed(int x){ //setter
      myXspeed = x;
    }
    public void setYspeed(int y){ //setter
      myYspeed = y;
    }
    public void hyperSpace(){
      myCenterX = Math.random()*401;
      myCenterY = Math.random()*401;
    }
}
