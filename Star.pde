public class Star //note that this class does NOT extend Floater
{
  private int myColor, myX, myY, myWidth, myHeight;
  public Star(){
    myColor = color((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
    myX = (int)(Math.random()*400); 
    myY = (int)(Math.random()*400);
    myWidth = (int)(Math.random()*3)+1;
    myHeight = (int)(Math.random()*5)+1;
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, myWidth, myHeight);
  }
}
