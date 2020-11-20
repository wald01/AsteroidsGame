//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars = new Star[100];
public void setup() 
{
  size(400,400);
  noCursor();
  //frameRate(30);
  for(int i = 0; i < stars.length; i++){
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

  for(int i = 0; i < stars.length; i++)
    stars[i].show((int)(Math.random()*390)+10, (int)(Math.random()*390)+10);
  //if(keyPressed){   //without this it keeps on moving when key pressed once and released


  //}
}
public void keyPressed(){
      if(key == 'd' || key == 'D'){
      bob.setXspeed(1);
      bob.setYspeed(0);
      bob.accelerate(0.2);
      //bob.turn(1);
      bob.move();
    }      
    //pointdirection? if its pointing towards up its stops turning
    else if(key == 'w' || key == 'W'){
      bob.setXspeed(0);
      bob.setYspeed(-1);
      //bob.turn(-1);
      bob.move();
    }
    else if(key == 's' || key == 'S'){
      bob.setXspeed(0);
      bob.setYspeed(1);
      //bob.turn(1);
      bob.move();
    }
    else if(key == 'a' || key == 'A'){
      bob.setXspeed(-1);
      bob.setYspeed(0);
      //bob.turn(1);
      bob.move();
    }
    else if(key == 'z' || key == 'Z')
      bob.hyperSpace();
    else if(key == 'e' || key == 'E'){
      bob.turn(1);
    }
    else if(key == 'q' || key == 'Q'){
      bob.turn(-1);
    }
    else if(key == 'r' || key == 'R'){
      bob.accelerate(0.2);
    }
}
