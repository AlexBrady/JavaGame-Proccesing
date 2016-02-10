class Mobs extends GameObject
{
  int radius = 30;
  int speed = 5;
  
  Mobs(float x, float y, float scale)
  {
    super(x,y,scale);
  }
  
  void applyTo(Block block)
  {
    background(0);
    fill(0,0,255);
    text("Game over",width/2,height/2);
    text("Points = "+points,width/2,height/2+30);
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(1);
    fill(0,0,255);
    ellipse(mpos.x,mpos.y,halfW,halfW);
  }
  
  void update()
  {
    mpos.y = mpos.y + speed;
    if( mpos.y >= height || mpos.y <= 0 )
    {
      speed = speed  * -1;
    }
    
  }
}

