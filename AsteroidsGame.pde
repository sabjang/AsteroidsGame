//your variable declarations here
Spaceship bob = new Spaceship();
Star [] friends = new Star[150];
ArrayList <Asteroid> susie = new ArrayList<Asteroid>();
public void setup() 
{
  size(400, 400);
  for(int i = 0; i<friends.length; i++){
    friends[i] = new Star();
  }
  for(int i = 0; i<6; i++){
    susie.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<friends.length; i++){
    friends[i].show();
  }
  for(int i = 0; i<susie.size(); i++){
    susie.get(i).show();
    susie.get(i).move();
    float d = dist(bob.getX(), bob.getY(), susie.get(i).getX(), susie.get(i).getY());
    if(d<=20){
      susie.remove(i);
    }
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
