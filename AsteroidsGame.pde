//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars = new Star[50];
int acc = 0;
char lastKey = ' ';
public void setup() 
{
  size(400, 400);
  noCursor();
  //frameRate(30);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(5);
  }
  //  if(keyPressed){
  //   if(key == 'f' || key == 'F')
  //      bob.accelerate(2);
  //  }
}
public void draw() 
{
  background(0);
  bob.show();
  //bob.accelerate(0.2);
  for (int i = 0; i < stars.length; i++)
    stars[i].show((int)(Math.random()*390)+10, (int)(Math.random()*390)+10);
    if (key == 'x' || key == 'R')
    bob.accelerate(0.2);
  if(keyPressed){   //without this it keeps on moving when key pressed once and released
    if (key == 'd' || key == 'D') {
    bob.setXspeed(0.5);
    bob.setYspeed(0);
    bob.move();
    lastKey = 'd';
    bob.accelerate(0.2);
    //bob.turn(1); //pointdirection? if its pointing towards up its stops turning
  } else if (key == 'w' || key == 'W') {
    bob.setXspeed(0);
    bob.setYspeed(-0.5);
    //bob.turn(-1);
    bob.move();
    lastKey = 'w';
  } else if (key == 's' || key == 'S') {
    bob.setXspeed(0);
    bob.setYspeed(0.5);
    //bob.turn(1);
    bob.move();
    lastKey = 's';
  } else if (key == 'a' || key == 'A') {
    bob.setXspeed(-0.5);
    bob.setYspeed(0);
    //bob.turn(1);
    bob.move();
    lastKey = 'a';
  } else if (key == 'z' || key == 'Z') {
    bob.hyperSpace();
  } else if (key == 'e' || key == 'E') {
    bob.turn(1);
  } else if (key == 'q' || key == 'Q') {
    bob.turn(-1);
  } else if (key == 'f' || key == 'F'){
    switch(lastKey){
    case 'd':
    
    }
  }
  }


}
