public class Star //note that this class does NOT extend Floater
{
  private int myColor, mySize, myX, myY;
  public Star(int size){
    mySize = size;
    myColor = color(255, 255, 0);
    //myX = x;
    //myY = y;
  }
  public void setXY(int x, int y){
      myX = x;
      myY = y;
  }
  public void show(){
    //noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  public void move(){      //math.random for chance for star to move
    if(Math.random()*5+1 == 1){ //need to change random chance to one for every direction
      myX += 5;
  }
  }
}
