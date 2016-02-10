
void setup()
{
  size(600,600);
  smooth();
  
  menu = new Menu();
  block = new Block('W','A','S','D');
  gameObjects.add(block);
  mobs = new Mobs(105,15,60);
  gameObjects.add(mobs);
  mobs = new Mobs(225,15,60);
  gameObjects.add(mobs);
  mobs = new Mobs(345,15,60);
  gameObjects.add(mobs);
  mobs = new Mobs(465,15,60);
  gameObjects.add(mobs);
  mobsY = new MobsY(15,105,60);
  gameObjects.add(mobsY);
  mobsY = new MobsY(15,225,60);
  gameObjects.add(mobsY);
  mobsY = new MobsY(15,345,60);
  gameObjects.add(mobsY);
  mobsY = new MobsY(15,465,60);
  gameObjects.add(mobsY);
  
}
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

boolean[] keys = new boolean[525];

int screen = 0;

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
MobsY mobsY;

int size = 30;

void draw()
{
  if( screen == 0 )
  {
    menu.displayMenu();
  }
  if( screen == 1 )
  {
    drawBackground();
  
  
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
        
        
        if(other instanceof Mobs)
        {
          if(go.pos.dist(other.mpos) < go.w + other.halfW)
          {
            println("DEAD");
          }
        }
        
        if(other instanceof MobsY)
        {
          if(go.pos.dist(other.mpos2) < go.w + other.halfW)
          {
            println("dead");
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



