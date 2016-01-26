
Menu menu;

void setup()
{
  size(500,500);
  smooth();
  
  menu = new Menu();
}


void draw()
{
  background(128,0,128);
  menu.displayMenu();
  menu.displayArrow();
}

