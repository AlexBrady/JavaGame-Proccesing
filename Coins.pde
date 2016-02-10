class Coins extends GameObject implements Pickup
{
  
  Coins()
  {
    super(random(0,width), random(0,height),20);//random co-ordinates for the coins to spawn
  }
  
  void applyTo(Block block)
  {
    block.points ++;//increase points evry coin you pickup
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(2);
    fill(255,215,0);
    ellipse(cpos.x,cpos.y,w,w);//draw the coins
  }
  
  
  void update()
  {
    
  }
  
}

