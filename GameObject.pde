abstract class GameObject
{
  PVector pos;
  float blockSize = 30;
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
    this.w = w;
    this.halfW = w * 0.5f; 
  }
  
  abstract void render();
  abstract void update();
  
}
