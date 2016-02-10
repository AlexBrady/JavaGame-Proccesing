abstract class GameObject
{
  PVector pos;
  PVector cpos;
  PVector mpos;
  PVector mpos2;
  float blockSize = 30;
  float speed = 4;
  float w;
  
  GameObject()
  {
    this(0,0,30);
  }
  
  GameObject(float x, float y, float w)
  {
    pos = new PVector(x,y);
    cpos = new PVector(x,y);
    mpos = new PVector(x,y);
    mpos2 = new PVector(x,y);
    this.w = w;
  }
  
  abstract void render();
  abstract void update();
  
}
