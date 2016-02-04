
void setup()
{
  size(600,600);
  smooth();
  
  menu = new Menu();
  block = new Block();
  mobs = new Mobs();
}


Menu menu;
Block block;
Mobs mobs;

int size = 30;
float posMobY = 105;


void draw()
{
  //menu.displayMenu();
  //menu.displayArrow();
  
  drawBackground();
  
  block.render();
  block.move();
  
  mobs.drawMobsY(posMobY);
  mobs.drawMobsY(posMobY + size*4);
  mobs.drawMobsY(posMobY + size*4*2);
  mobs.drawMobsY(posMobY + size*4*3);
  
  mobs.drawMobsX(posMobY);
  mobs.drawMobsX(posMobY + size*4);
  mobs.drawMobsX(posMobY + size*4*2);
  mobs.drawMobsX(posMobY + size*4*3);
}

void drawBackground()
{
  strokeWeight(1);
  
  for (int i = 0; i < width; i += size) 
  {
    for (int j = 0; j < height; j += size)
    {
      if ( (i+j) % 20 == 0 ) 
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

