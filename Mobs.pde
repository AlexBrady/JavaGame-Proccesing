class Mobs
{
<<<<<<< HEAD
  
=======
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
  float y = size * 0.5;
  float x1 = size * 0.5;
  float radius = size;
  float speed = 2;
<<<<<<< HEAD
  float test = 8;
  
  void render(float x)
  {
    fill(0,0,255);
    strokeWeight(2);
=======
  
  void drawMobsY(float x)
  {
    fill(0,0,255);
    strokeWeight(1);
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
    
    ellipse(x,y,radius,radius);
    y = y + speed;
    if(y >= height || y <= 0)
    {
      speed = speed * -1;
    }
    
  }
  
<<<<<<< HEAD
 void update(float y)
  {
    fill(0,0,255);
    strokeWeight(2);
=======
  void drawMobsX(float y)
  {
    fill(0,0,255);
    strokeWeight(1);
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
    
    ellipse(x1,y,radius,radius);
    x1 = x1 + speed;
    if( x1 >= width || x1 <= 0 )
    {
      speed = speed * -1;
    }
  }
   
  
  
}
  
<<<<<<< HEAD
=======
  
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601

