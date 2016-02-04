class Block
{
  float startX;
  float startY;
  float blockSize;
  
  Block()
  {
    startX = 0;
    startY = 0;
    bloackSize = 30;
  }
  void render()
  {
    fill(255,0,0);
    stroke(0);
    strokeWeight(4);
    rect(startX,startY,blockSize,blockSize);

  }
  
  void move()
  {
    if(keyPressed)
    {
      if(key == 'w')
      {
        startY--;
      }
      if(key == 'a')
      {
        startX--;
      }
      if(key == 's')
      {
        startY++;
      }
      if(key == 'd')
      {
        startX++;
      }
    }
  }
}
