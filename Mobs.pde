class Mobs extends GameObject
{
  int radius = 30;
  int speed = 5;
  
  Mobs()
  {
    super(105,15,30);
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(1);
    fill(0,0,255);
    ellipse(mpos.x,mpos.y,radius,radius);
    ellipse(mpos.x + 120,mpos.y,radius,radius);
    ellipse(mpos.x + 120*2,mpos.y,radius,radius);
    ellipse(mpos.x + 120*3,mpos.y,radius,radius);
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

