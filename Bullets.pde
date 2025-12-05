public class Bullet extends Floater{
  public Bullet(Spaceship theShip){
  myCenterX = theShip.getX();
  myCenterY = theShip.getY();
  myPointDirection = theShip.getPointDirection();
  accelerate(3.0);
  }
  public void show(){
    fill(255, 104, 104);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
}
