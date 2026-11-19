class Asteroid extends Floater{
    private double rotation;
    public Asteroid(int aX, int aY){
        rotation = 10;
      
        corners = 5;
        xCorners = new int[]{6, 12, 0, -12, -6};
        yCorners = new int[]{-12, 0, 12, 0, -12};
        myColor = color(74, 65, 42);
        myPointDirection = 0;
        myCenterX = aX;
        myCenterY = aY;
    }
    public void move(){
      turn(rotation);
      super.move();
    }
    
    public void setXspeed(double xxSpeed){myXspeed = xxSpeed;}
    public void setYspeed(double yySpeed){myYspeed = yySpeed;}
    public double getXspeed(){return myXspeed;}
    public double getYspeed(){return myYspeed;}

}
