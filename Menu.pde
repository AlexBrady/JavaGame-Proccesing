class Menu
{
  // declare variables
  float menuTextX = width / 2;
  float menuTextY = height / 5;
  float text1 = (height / 5)*2;
  float text2 = (height / 5)*3;
  //colours
  int r = 128;
  int g = 0;
  int b = 128;
  int r1 = 128;
  int g1 = 0;
  int b1 = 128;
  
  
  
  // functions
  void displayMenu()
  {
    //main menu
    background(128,0,128);
    String gameName = "Coin Block Pickup";
    String playGame = "Play";
    String quit = "Quit";
    //hit boxes for clicking
    fill(r,g,b);
    stroke(128,0,128);
    rect(menuTextX - 60, menuTextY*2 - 25, 120, 40);
    fill(r1,g1,b1);
    rect(menuTextX - 60, menuTextY*4 - 25, 120, 40);
     //menu text
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(gameName, menuTextX, menuTextY);
    //menu text
    textSize(25);
    textAlign(CENTER);
    text(playGame, menuTextX, menuTextY*2);
    text(quit, menuTextX, menuTextY*4);
    //clicking the texts to bring you to the game or quit
    if( mouseX < menuTextX + 60 && mouseX > menuTextX - 60 && mouseY < 240 && mouseY > 215)
    {
      r = 170;
      b = 170;
      if(mousePressed)
      {
        screen = 1;
      }
    }
    else
    {
      r = 128;
      b = 128;
    }
    
    if( mouseX < menuTextX + 60 && mouseX > menuTextX - 60 && mouseY < 500 && mouseY > 460)
    {
      r1 = 170;
      b1 = 170;
      if(mousePressed)
      {
        exit();
      }
    }
    else
    {
      r1 = 128;
      b1 = 128;
    }
    
  }

  
  


}
