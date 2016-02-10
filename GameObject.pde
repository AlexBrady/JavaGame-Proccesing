<<<<<<< HEAD
abstract class GameObject
=======

class GameObject
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
{
  PVector pos;
  float blockSize = 30;
  float speed = 4;
<<<<<<< HEAD
  float w;
  float halfW;
  
  GameObject()
  {
    this(0,0,30);
  }
  
  GameObject(float x, float y, float w)
  {
    pos = new PVector(x,y);
    this.w = w;
    this.halfW = w * 0.5f; 
  }
  
  abstract void render();
  abstract void update();
  
=======
  
  GameObject()
  {
    this(0,0);
  }
  
  GameObject(float x, float y)
  {
    pos = new PVector(x,y);

  }
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
}
