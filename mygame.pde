
void setup()
{
  size(600,600);
  smooth();
  
  menu = new Menu();
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
    
  checkCollisions();
  
}

void checkCollisions()
{
 for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
 {
    GameObject go = gameObjects.get(i);
    if (go instanceof Block)
    {
      for(int j = gameObjects.size() - 1 ; j >= 0   ;j --)
      {
        GameObject other = gameObjects.get(j);
        if (other instanceof Pickup) 
        {
          if (go.pos.dist(other.pos) < go.w + other.w)
          {
            ((Pickup) other).applyTo((Block)go);
            gameObjects.remove(other);
          }
        }
      }
    }
 } 
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



