class Spaceship extends Floater{   
    public Spaceship(int aX, int aY){
        corners = 3;
        xCorners = new int[]{-8, 16, -8};
        yCorners = new int[]{-8, 0, 8};
        myColor = color(255, 255, 255);
        myPointDirection = 0;
        myCenterX = aX;
        myCenterY = aY;
    }
    public void setXspeed(double xxSpeed){myXspeed = xxSpeed;}
    public void setYspeed(double yySpeed){myYspeed = yySpeed;}
    public double getXspeed(){return myXspeed;}
    public double getYspeed(){return myYspeed;}
    public void setCenterX(double xxx){myCenterX = xxx;}
    public void setCenterY(double yyy){myCenterY = yyy;}
    public void setDirection(double dir){myPointDirection = dir;}
        public double getCenterX(){return myCenterX;}
    public double getCenterY(){return myCenterY;}
}
