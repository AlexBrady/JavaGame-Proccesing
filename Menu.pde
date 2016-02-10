class Menu
{
  // declare variables
  float menuTextX = width / 2;
  float menuTextY = height / 5;
  float text1 = (height / 5)*2;
  float text2 = (height / 5)*3;
  int tempsize = height/30;
  int tricounter = 0;
  float x1 = menuTextX-(height/4);
  float y1 = menuTextY*2-tempsize;
  float x2 = menuTextX-(height/4);
  float y2 = menuTextY*2;
  float x3 = menuTextX*0.7;
  float y3 = menuTextY*2-tempsize/2;
<<<<<<< HEAD
=======
  // constructors
>>>>>>> f9383e2830eb7a3ebb165599e331b70aab3db601
  
  
  
  // functions
  void displayMenu()
  {
    background(128,0,128);
    fill(255);
    String gameName = "Game";
    String playGame = "Play Game";
    String high = "High Scores";
    String quit = "Quit";
   
    textSize(40);
    textAlign(CENTER);
    text(gameName, menuTextX, menuTextY);
    
    textSize(25);
    textAlign(CENTER);
    text(playGame, menuTextX, menuTextY*2);
    text(high, menuTextX, menuTextY*3);
    text(quit, menuTextX, menuTextY*4);
  }

  void displayArrow()
  {
    fill(0);
    triangle(x1,y1,x2,y2,x3,y3);
    /*if(keyPressed)
    {
      if(key == 's')
      {
        tricounter++;
        y1 += menuTextY;
        y2 += menuTextY;
        y3 += menuTextY;
      }
    }*/
  }
  
  void keyReleased()
  {
    tricounter++;
    y1 += menuTextY;
    y2 += menuTextY;
    y3 += menuTextY;
  }
  
  


}
