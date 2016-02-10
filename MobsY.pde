class MobsY extends GameObject
{
  int radius = 30;
  int speed = 5;
  
  MobsY()
  {
    super(15,105,30);
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(1);
    fill(0,0,255);
    ellipse(mpos2.x,mpos2.y,radius,radius);
    ellipse(mpos2.x,mpos2.y + 120,radius,radius);
    ellipse(mpos2.x,mpos2.y + 120*2,radius,radius);
    ellipse(mpos2.x,mpos2.y + 120*3,radius,radius);
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
