class Block extends GameObject
{
  
  void render()
  {
    fill(255,0,0);
    stroke(0);
    strokeWeight(4);
    rect(pos.x,pos.y,blockSize,blockSize);

  }
  void move()
  {
    if(keyPressed)
    {
      if(key == 'w')
      {
        pos.y = pos.y - speed;
      }
      if(key == 'a')
      {
        pos.x = pos.x - speed;
      }
      if(key == 's')
      {
        pos.y = pos.y + speed;
      }
      if(key == 'd')
      {
        pos.x = pos.x + speed;
      }
    }
  }
}
