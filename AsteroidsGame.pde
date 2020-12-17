//your variable declarations here

//put corners into an array
//for(each corner in array)
//if distance, asteroids.remove(asteroids.get(i))


Spaceship bob = new Spaceship();
Star[] stars = new Star[50];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
int acc = 0;
//char lastKey = ' ';
public void setup() 
{
  size(400, 400);
  noCursor();
  //frameRate(30);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(5);
    stars[i].setXY((int)(Math.random()*390)+10, (int)(Math.random()*390)+10);
  }
//  for (int i = 0; i < stars.length; i++)
//    stars[i].show((int)(Math.random()*390)+10, (int)(Math.random()*390)+10);
  for(int i = 0; i < 20; i++){
    //if((int)Math.random()*2 == 1){
      asteroids.add(new Asteroid());
     if((int)(Math.random()*4)+1 == 1)
      asteroids.get(i).setSpeed((Math.random()*0.30), (Math.random()*0.30)); //math.random -0.33 to 0.3
     else if((int)(Math.random()*4)+1 == 2)
       asteroids.get(i).setSpeed((Math.random()*-0.30), (Math.random()*-0.30));
     else if((int)(Math.random()*4)+1 == 3)
       asteroids.get(i).setSpeed((Math.random()*-0.30), (Math.random()*0.30));
     else
       asteroids.get(i).setSpeed((Math.random()*0.30), (Math.random()*-0.30));
      //asteroids.add(asteroid)
    //}
  }
}
public void draw() 
{
  background(0);
  bob.show();
  //bob.accelerate(0.2);
  for (int i = 0; i < stars.length; i++)
    stars[i].show();
  for(int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
    if(dist((float)(asteroids.get(i)).getCenterX(), (float)(asteroids.get(i)).getCenterY(), (float)bob.getCenterX(), (float)bob.getCenterY()) <= 10){
      asteroids.remove(i);
    }
  }
  if(asteroids.size() <= 10){
    for(int i = 0; i < 5; i++){
      asteroids.add(new Asteroid());
     for(int y = 0; y < asteroids.size(); y++){
     if((int)(Math.random()*4)+1 == 1)
      asteroids.get(i).setSpeed((Math.random()*0.30), (Math.random()*0.30)); //math.random -0.33 to 0.3
     else if((int)(Math.random()*4)+1 == 2)
       asteroids.get(i).setSpeed((Math.random()*-0.30), (Math.random()*-0.30));
     else if((int)(Math.random()*4)+1 == 3)
       asteroids.get(i).setSpeed((Math.random()*-0.30), (Math.random()*0.30));
     else
       asteroids.get(i).setSpeed((Math.random()*0.30), (Math.random()*-0.30));
     }
    }  
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    for(int j = 0; j < asteroids.size(); j++){
      if(dist((float)shots.get(i).getCenterX(), (float)shots.get(i).getCenterY(), (float)asteroids.get(j).getCenterX(), (float)asteroids.get(j).getCenterY()) < 10){
      shots.remove(i);
      asteroids.remove(j);
      }
    }
//    if(shots.get(i).getCenterX() > 400)
//      shots.remove(i);
//    else if(shots.get(i).getCenterX() < 0)
//      shots.remove(i);
//    else if(shots.get(i).getCenterY() > 400)
//     shots.remove(i);
//    else if(shots.get(i).getCenterY() < 0)
//      shots.remove(i);
    }
  if(keyPressed){   //without this it keeps on moving when key pressed once and released
    if (key == 'd' || key == 'D') {
    bob.setXspeed(0.5);
    bob.setYspeed(0);
    bob.move();
    //lastKey = 'd';
    bob.accelerate(0.2);
    //bob.turn(1); //pointdirection? if its pointing towards up its stops turning
  } else if (key == 'w' || key == 'W') {
    bob.setXspeed(0);
    bob.setYspeed(-0.5);
    //bob.turn(-1);
    bob.move();
    //lastKey = 'w';
  } else if (key == 's' || key == 'S') {
    bob.setXspeed(0);
    bob.setYspeed(0.5);
    //bob.turn(1);
    bob.move();
    //lastKey = 's';
  } else if (key == 'a' || key == 'A') {
    bob.setXspeed(-0.5);
    bob.setYspeed(0);
    //bob.turn(1);
    bob.move();
    //lastKey = 'a';
  } else if (key == 'z' || key == 'Z') {
    bob.hyperSpace();
  } else if (key == 'e' || key == 'E') {
    bob.turn(1);
  } else if (key == 'q' || key == 'Q') {
    bob.turn(-1);
  } else if (key == 'f' || key == 'F'){
    bob.move();
    bob.accelerate(0.2);
  } else if(key == ' '){
    shots.add(new Bullet(bob));
    //if(shots.size() > 200){
    //  shots.remove(0);
    
  }
  }
  }
