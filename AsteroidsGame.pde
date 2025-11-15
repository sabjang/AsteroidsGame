//your variable declarations here
Spaceship bob = new Spaceship();
Star [] friends = new Star[50];
public void setup() 
{
  size(400, 400);
  for(int i = 0; i<friends.length; i++){
    friends[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<friends.length; i++){
    friends[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if(keyCode == DOWN){ 
    bob.hyperspace();
  }
  if(keyCode==UP){
    bob.accelerate();
  }
  if(keyCode==LEFT){
    bob.turnLeft();
  }
  if(keyCode==RIGHT){
    bob.turnRight();
  }
}

