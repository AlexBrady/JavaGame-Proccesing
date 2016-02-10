
void setup()
{
  size(600,600);
  smooth();
  
  menu = new Menu();
<<<<<<< HEAD
  block = new Block('W','A','S','D');
  gameObjects.add(block);
  mobs = new Mobs();
  
}
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}
=======
  block = new Block();
  mobs = new Mobs();
}

>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601

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
  
<<<<<<< HEAD
  
  mobs.update(posMobY);
  mobs.update(posMobY + size*4);
  mobs.update(posMobY + size*4*2);
  mobs.update(posMobY + size*4*3);
  
  mobs.render(posMobY);
  mobs.render(posMobY + size*4);
  mobs.render(posMobY + size*4*2);
  mobs.render(posMobY + size*4*3);
  
  if(frameCount % 60 == 0)
  {
    GameObject coins = new Coins();
    gameObjects.add(coins);
  }
  
  for(int i = gameObjects.size() - 1 ; i >= 0   ; i--)
  {
      
     GameObject go = gameObjects.get(i);
     
     go.update();
     go.render();
       
 }// end for
    
  
  
=======
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
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
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
<<<<<<< HEAD
  
}
=======
}

>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
