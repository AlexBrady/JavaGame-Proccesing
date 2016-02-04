
Menu menu;
Block block;

int size = 30;
void setup()
{
  size(600,600);
  smooth();
  
  menu = new Menu();
  block = new Block();
}

void draw()
{
  //menu.displayMenu();
  //menu.displayArrow();
  drawBackground();
  block.render();
  block.move();
}

void drawBackground()
{
  strokeWeight(1);
  for (int i = 0; i < width; i += size) 
  {
    for (int j = 0; j < height; j += size)
    {
      if ((i+j) % 20 ==0) 
      { 
        fill(178);
      }
      else 
      {
        fill(255);
      }
      rect (i, j, size, size);
   }
  }
}

