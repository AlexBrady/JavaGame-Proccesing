class Block extends GameObject
{
  
  char up;
  char left;
  char down;
  char right;
  //int points = 0;
  
  Block(char up, char left, char down, char right)
  {
    super(0,0,30);
    this.up = up;
    this.left = left;
    this.down = down;
    this.right = right;
  }
  
  void render()
  {
    fill(255,0,0);
    stroke(0);
    strokeWeight(3);
    rect(pos.x,pos.y,blockSize,blockSize);
    
    fill(255,215,0);
    textSize(25);
    text("Coins = "+ points, width * 0.69, 25);
  }
  void update()
  {
      if(keys[up])
      {
        pos.y = pos.y - speed;
      }
      if(keys[left])
      {
        pos.x = pos.x - speed;
      }
      if(keys[down])
      {
        pos.y = pos.y + speed;
      }
      if(keys[right])
      {
        pos.x = pos.x + speed;
      }
      
      if (pos.x < 0)
    {
      pos.x = width;
    }
    
    if (pos.x > width)
    {
      pos.x = 0;
    }
    
    if (pos.y < 0)
    {
      pos.y = height;
    }
    
    if (pos.y > height)
    {
      pos.y = 0;
    }
  }
}
