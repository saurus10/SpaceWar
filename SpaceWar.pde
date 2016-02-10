void setup()
{
  size(500, 500);
  //ship = new Ship();
  //ship1 = new AIship();
  
  //refactored polymorphism 
  Ship ship = new Ship('W', 'A', 'D', ' ', 200, height / 2, color(0, 255, 255));
  ships.add(ship);
  ship = new Ship('I', 'J', 'L', 'K', width - 200, height / 2, color(255, 255, 0));
  ships.add(ship);
  
  gameObjects.add(ship);
  
  
   // Add 5 random stars
  for (int i = 0 ; i < 5 ; i ++)
  {
    Star star = new Star(
        random(100, width - 100)
        , random(100, height - 100)
        , random(50, 100)
        , color(random(100, 255), random(100, 255), random(100, 255))
        , (int) random(3, 20)
        );
  gameObjects.add(star);
  }
}

// The class name always starts with uppercase!!
//Ship ship; // ship is called an INSTANCE of the Ship class
//AIship ship1; // ship is called an INSTANCE of the Ship class
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<Ship> ships = new ArrayList<Ship>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{
  background(0);
    
  for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
  }
  
}

//ABSRACT CLASSES
/*
Some of the methods have no body.
1.Can't be instantiated
2.Must be subclassed
3.Sub classes must put bodies to the methods 
with no body, otherwise they are also abstract
4.

*/



/*Some bloody job haaaaai*/


  