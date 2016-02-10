class Block extends GameObject
{
  
<<<<<<< HEAD
  char up;
  char left;
  char down;
  char right;
  int points = 0;
  
  Block(char up, char left, char down, char right)
  {
    super(0,0,30);
    this.up = up;
    this.left = left;
    this.down = down;
    this.right = right;
  }
  
=======
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
  void render()
  {
    fill(255,0,0);
    stroke(0);
<<<<<<< HEAD
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
=======
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
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
    }
  }
}
