Spaceship aShip = new Spaceship(300, 300);
boolean pressedH = false;
boolean pressedW = false;
boolean pressedA = false;
boolean pressedD = false;

public void setup() {
  background(0);
  size(600, 600);
    aShip.setXspeed(2);
    aShip.setYspeed(2);
}

public void draw() {
  background(0);
  aShip.move();
  aShip.show();
  
  if(pressedH){}
  if(pressedW){aShip.accelerate(0.5);}
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
}
