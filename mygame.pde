void setup()
{
  size(500,500);
}


void draw()
{
  drawMenu();
}


void drawMenu()
{
  background(128,0,128);
  fill(255);
  String gameName = "Some Shit Game";
  String playGame = "Play Shit Game";
  String settings = "Settings for Shit Game";
  String quit = "Quit Shit Game";
  String fuckYou = "Fuck you";
  int menuTextX = width / 2;
  int menuTextY = height / 5;
  
  textSize(50);
  textAlign(CENTER);
  text(gameName, menuTextX, menuTextY);
  
  textSize(30);
  textAlign(CENTER);
  text(playGame, menuTextX, menuTextY + (height / 5)- 25);
  text(settings, menuTextX, menuTextY + ((height/ 5)*2)-25);
  text(quit, menuTextX, menuTextY + ((height / 5)*3)-25);
  text(fuckYou, menuTextX, menuTextY + ((height / 5)*4)-25);
}
