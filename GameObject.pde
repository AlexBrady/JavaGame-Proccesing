abstract class GameObject
{
  PVector pos;
  PVector cpos;
  PVector mpos;
  PVector mpos2;
  float blockSize = 30;
  int points = 0;
  float speed = 4;
  float w;
  float halfW;
  
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
    this.halfW = w * 0.5f;
  }
  
  abstract void render();
  abstract void update();
  
}
