public class Star //note that this class does NOT extend Floater
{
  int myColor;
  int myX, myY;
  int mySize;
  Star(int size){
    mySize = size;
    myColor = color(255, 255, 0);
    //myX = x;
    //myY = y;
  }
  public void show(int x, int y){
    //noStroke();
    fill(myColor);
    ellipse(x, y, mySize, mySize);
  }
}
