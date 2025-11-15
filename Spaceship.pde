class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(255);
    myCenterX = 200;
    myCenterY = 200; 
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 350;
  }
  public void hyperspace(){
    myCenterX = (Math.random()*300)+50;
    myCenterY = (Math.random()*300)+50;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (Math.random()*360);
  }
  public void accelerate(){ 
    if(myPointDirection==0 || myPointDirection==360){ //straight right
      myXspeed = myXspeed + .5;
    }
    if(myPointDirection==90){ //straight down
      myYspeed = myYspeed + .5;
    }
    if(myPointDirection==180){ //straight left
      myXspeed = myXspeed - .5;
    }
    if(myPointDirection==270){ //straight up
      myYspeed = myYspeed - .5;
    }
    if(myPointDirection>0 && myPointDirection<90){ //Q4
      myXspeed = myXspeed + .5;
      myYspeed = myYspeed + .5;
    }
    if(myPointDirection>90 && myPointDirection<180){ //Q3
      myXspeed = myXspeed - .5;
      myYspeed = myYspeed + .5;
    }
    if(myPointDirection>180 && myPointDirection<270){ //Q2
      myXspeed = myXspeed - .5;
      myYspeed = myYspeed - .5;
    }
    if(myPointDirection>270 && myPointDirection<360){ //Q1
      myXspeed = myXspeed + .5;
      myYspeed = myYspeed - .5;
    }
  }
  public void turnLeft(){
    myPointDirection = myPointDirection-5;
  }
  public void turnRight(){
    myPointDirection = myPointDirection+5;
  }
}

