class Menu
{
  // declare variables
  float menuTextX = width / 2;
  float menuTextY = height / 5;
  // constructors
  
  
  
  // functions
  void displayMenu()
  {
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
    text(playGame, menuTextX, menuTextY + (height / 5));
    text(high, menuTextX, menuTextY + ((height/ 5)*2));
    text(quit, menuTextX, menuTextY + ((height / 5)*3));
  }

  void displayArrow()
  {
    fill(0);
    triangle(menuTextX-140,menuTextY+75,menuTextX-140,menuTextY+105,menuTextX-100,menuTextY+92);
  }
  


}
