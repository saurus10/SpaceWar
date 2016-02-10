//inheritance
/*When a class extends another class:everything that Ship has
AIship now also has*/
class AIship extends Ship
{
  
  // default constructor
  //no return type
  //always the same name as the class
  AIship()
  {  
     println("In AI DEfault Constructor");
  }
  
  
 // This OVERRIDES the update method from the superclass
  void update()
  {
      forward.x = sin(theta);
      forward.y = - cos(theta);
      
      // Move in the direction we are rotated
      forward.mult(speed);
      pos.add(forward);
      
      
      if (pos.y - halfW < 0)
      {
        theta = HALF_PI;
        pos.y = halfW;
      }
      if (pos.x + halfW > width)
      {
        theta = PI;
        pos.x = width - halfW;
      }
      if (pos.y + halfW > height)
      {
        theta = PI + HALF_PI;
        pos.y = height - halfW;
      }
      if (pos.x < halfW)
      {
        theta = 0;
        pos.x = halfW;
      }
    
  }
  
 
  
}
  
//AIship is the sub class of ship or the derived class, the child class or the specialization
// Ship is the base class or the super class or parent class or the generalization
  
/*Some inheritance rules
1. You don't get the constructors when you extend 
2. If you don't call the super the super class consctructor then
the default constructor gets called (Use super/this to explicitly call constructor)
3. 
*/
  