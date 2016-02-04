class Mobs
{
  float y = size * 0.5;
  float x1 = size * 0.5;
  float radius = size;
  float speed = 2;
  
  void drawMobsY(float x)
  {
    fill(0,0,255);
    
      ellipse(x,y,radius,radius);
      y = y + speed;
      if(y >= height || y <= 0)
      {
        speed = speed * -1;
      }
    
  }
  
  void drawMobsX(float y)
  {
    fill(0,0,255);
    
    ellipse(x1,y,radius,radius);
    x1 = x1 + speed;
    if( x1 >= width || x1 <= 0 )
    {
      speed = speed * -1;
    }
  }
   
  
  
}
  
  

