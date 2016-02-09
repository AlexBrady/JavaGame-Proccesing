class Coins extends GameObject
{
  
  Coins()
  {
    super(random(0,width), random(0,height),20);
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(2);
    fill(255,215,0);
    ellipse(pos.x,pos.y,w,w);
  }
  
  
  void update()
  {
    
  }
  
}
