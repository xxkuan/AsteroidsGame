//to do
//hyperspace limit bar
//do not hyperspace on top of asteroids
//make fast asteroids (via child class)

Spaceship aShip = new Spaceship(300, 300);
Star[] backStars = new Star[100];
//Asteroid bob = new Asteroid(200, 200);
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
boolean pressedH = false;
boolean pressedW = false;
boolean pressedS = false;
boolean pressedA = false;
boolean pressedD = false;

public void setup() {
  background(0);
  size(600, 600);
  //bob.setXspeed(2); bob.setYspeed(2);
    aShip.setXspeed(0);
    aShip.setYspeed(0);
    aShip.setDirection(Math.random()*360);
    for(int i = 0; i < backStars.length; i++){
      backStars[i] = new Star((Math.random()*600), (Math.random()*600));
      backStars[i].show();
    }
}

public void draw() {
  background(0);
  aShip.move();
  aShip.show();

  //bob.accelerate(0.1);
  //bob.move(); bob.show();
  if((int)(Math.random()*100) > 98){
    asteroids.add(new Asteroid((int)(Math.random()*600), (int)(Math.random()*10)));
  }

  for(int i = asteroids.size() - 1; i > 0; i--){
    asteroids.get(i).show();
    asteroids.get(i).move();
    asteroids.get(i).accelerate(0.1);
    if(dist((float)aShip.getCenterX(), (float)aShip.getCenterY(), (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY()) <= 20){
      asteroids.remove(i);
    }
  }

  for(int i = 0; i < backStars.length; i++){   
      backStars[i].show();
  }
  
  if(pressedH){}
  if(pressedW){aShip.accelerate(0.12);}
  if(pressedS){aShip.accelerate(-0.05);}
  if(pressedA){aShip.turn(-10);}
  if(pressedD){aShip.turn(10);}
  
  if(aShip.getXspeed() > 0 && aShip.getYspeed() > 0){aShip.accelerate(-0.1);}
}

public void keyPressed(){
  if(key == 'h'){
    pressedH = true;
    aShip.setXspeed(0); aShip.setYspeed(0);
    aShip.setCenterX(Math.random()*600); aShip.setCenterY(Math.random()*600); aShip.setDirection(Math.random()*360);
  }
  if(key == 'a'){
    pressedA = true;
  }
  if(key == 'd'){
    pressedD = true;
  }
  if(key == 'w'){
    pressedW = true;
  }
  if(key == 's'){
    pressedS = true;
  }
}

public void keyReleased(){
  if(key == 'h'){
    pressedH = false;
  }
  if(key == 'a'){
    pressedA = false;
  }
  if(key == 'd'){
    pressedD = false;
  }
  if(key == 'w'){
    pressedW = false;
  }
  if(key == 's'){
    pressedS = false;
  } 
}
