/* C14393571 Assignment 2 Alex Brady */

void setup()
{
  size(600,600);
  smooth();
  
  menu = new Menu();//Main Menu
  block = new Block('W','A','S','D');//User controlled Block
  gameObjects.add(block);
  mobs = new Mobs(105,15,60);//Mobs who kill you
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
//For improved block movement
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
    menu.displayMenu();//displays menu as default
  }
  if( screen == 1 )
  {
    drawBackground();//draws the background
  
  
    if(frameCount % 60 == 0)//Add a coin every second to the map
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
  
  if( screen == 2 )//Death screen !!!!
  {
    background(255);
    text("Game Over !", width / 2, height / 2);
    text("Your score was : " + block.points, width / 2, (height / 2) + 30);
    textSize(20);
    text("Click the mouse to go back to the main menu",width / 2,height / 2 + 60);
    if( mousePressed )
    {
      screen = 0;
    }
  }
  
}

void checkCollisions()//Check the block hiting the coins
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
        
        //Check block hitting mobs
        if(other instanceof Mobs)
        {
          if(go.pos.dist(other.mpos) < go.k + other.halfW-7)
          {
            block.points = 0;
            screen = 2;
          }
        }
        
        if(other instanceof MobsY)
        {
          if(go.pos.dist(other.mpos2) < go.k + other.halfW-7)
          {
            block.points = 0;
            screen = 2;
          }
        }
      }
    }
 } 
}

void drawBackground()//draws the pretty background
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



