class Star //note that this class does NOT extend Floater
{
  protected double starX, starY;
  public Star(double aX, double aY){
    starX = aX;
    starY = aY;
  }
  public void show(){
    fill(256, 256, 256);
    ellipse((float)starX, (float)starY, 1, 1);
  }
}
