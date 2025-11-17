//your variable declarations here
Spaceship bob = new Spaceship();
Star [] friends = new Star[150];
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
    bob.accelerate(.5);
  }
  if(keyCode==LEFT){
    bob.turn(-5);
  }
  if(keyCode==RIGHT){
    bob.turn(5);
  }
}
