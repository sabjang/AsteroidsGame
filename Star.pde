class Star //note that this class does NOT extend Floater
{
  int myColor, myX, myY, r, g, b;
  public void Star(){
    myColor = color(r, g, b);
    r = (int)(Math.random()*250);
    g = (int)(Math.random()*250);
    b = (int)(Math.random()*250);
    myX = (int)(Math.random()*400); 
    myY = (int)(Math.random()*400);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 2, 2);
  }
}

