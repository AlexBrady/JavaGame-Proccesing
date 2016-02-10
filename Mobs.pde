class Mobs extends GameObject
{
  int speed = 5;
  
  Mobs(float x, float y, float scale)
  {
    super(x,y,scale);//mob coordinates
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(1);
    fill(0,0,255);
    ellipse(mpos.x,mpos.y,halfW,halfW);//draw the mobs
  }
  
  void update()
  {
    mpos.y = mpos.y + speed;//mob movement
    if( mpos.y >= height || mpos.y <= 0 )
    {
      speed = speed  * -1;//constantly in the screen
    }
    
  }
}

