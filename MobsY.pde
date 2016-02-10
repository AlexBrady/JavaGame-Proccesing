//this class is the same as Mobs just for the mobs moving side to side
class MobsY extends GameObject
{
  int speed = 5;
  
  MobsY(float x, float y, float scale)
  {
    super(x,y,scale);
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(1);
    fill(0,0,255);
    ellipse(mpos2.x,mpos2.y,halfW,halfW);
  }
  
  void update()
  {
     mpos2.x = mpos2.x + speed;
    if( mpos2.x >= width || mpos2.x <= 0 )
    {
      speed = speed  * -1;
    }
  }
}
