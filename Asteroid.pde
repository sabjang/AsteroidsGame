public class Asteroid extends Floater
{
  double rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*6)-2;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    for(int i = 0; i<corners; i++){
      if(i==0){
        xCorners[i] = (int)(Math.random()*10)-10;
        yCorners[i] = (int)(Math.random()*10)-10;
      }
      else if(i==1){
        xCorners[i] = (int)(Math.random()*10)+10;
        yCorners[i] = (int)(Math.random()*10)-10;
      }
      else if(i==2){
        xCorners[i] = (int)(Math.random()*10)+10;
        yCorners[i] = 0;
      }
      else if(i==3){
        xCorners[i] = (int)(Math.random()*10)+10;
        yCorners[i] = (int)(Math.random()*10)+10;
      }
      else if(i==4){
        xCorners[i] = (int)(Math.random()*10)-10;
        yCorners[i] = (int)(Math.random()*10)+10;
      }
      else if(i==5){
        xCorners[i] = (int)(Math.random()*10)-10;
        yCorners[i] = 0;
      }
    }
    myCenterX = Math.random()*400; 
    myCenterY = Math.random()*400; 
    myColor = color(80);
    myXspeed = Math.random()*3-1; 
    myYspeed = Math.random()*3-1;
    myPointDirection = Math.random()*360;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
