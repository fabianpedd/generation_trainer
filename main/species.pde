class Species
{
  
  int number_of_springs;
  Spring[] springs;
  
  float x, y; // position
  float breite, hoehe; // dimension
  float vx, vy; // velocity
  float alpha; // angle
  float omega; // angular velocity
  final float gravity = 0.2;
  

  public Species(float x, float y, float breite, float hoehe, float vx, float vy, 
  float alpha, float omega, Spring[] springs)
  {
    this.x = x;
    this.y = y;
    this.breite = breite;
    this.hoehe = hoehe;
    this.vx = vx;
    this.vy = vy;
    this.alpha = alpha;
    this.omega = omega;
    
    this.springs = springs;
    
  }
  
  //todo: delete all that this species has ever drawn or done
  //basically a destructor, but keep parameters so we can modify them
  void erase() 
  {
    
  }
  
  void step()
  {
    x += vx;
    y += vy;
    alpha += omega;
    vy += gravity;
    
  }
  
  void paint()
  {
    pushMatrix();
    translate(x, y);
    rotate(alpha);
    rect(0, 0, breite, hoehe);
    popMatrix();
  }
  
  float getX() 
  {
    return x;
  }
  
  float getY() 
  {
    return y;
  }
}
