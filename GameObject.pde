
class GameObject
{
  PVector pos;
  float blockSize = 30;
  float speed = 4;
  
  GameObject()
  {
    this(0,0);
  }
  
  GameObject(float x, float y)
  {
    pos = new PVector(x,y);

  }
}
