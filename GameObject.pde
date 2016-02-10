abstract class GameObject
{
  //delcare variables
  PVector pos;//block coordinates
  PVector cpos;//coin coordinates
  PVector mpos;//mobs coordinates
  PVector mpos2;//mobs coordinates
  float blockSize = 30;
  int points = 0;
  float speed = 4;
  float w;
  float k;
  float halfW;
  
  GameObject()
  {
    this(0,0,30);//block coordinates
  }
  
  GameObject(float x, float y, float w)
  {
    pos = new PVector(x,y);
    cpos = new PVector(x,y);
    mpos = new PVector(x,y);
    mpos2 = new PVector(x,y);
    this.w = w;
    this.k = k;
    this.halfW = w * 0.5f;
  }
  
  abstract void render();
  abstract void update();
  
}
