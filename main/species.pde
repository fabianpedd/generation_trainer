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
  final float m = 1;
  float l = 0.5;
  final float h = 0.5;
  
  public Species(float x, float y, float breite, float hoehe, float vx, float vy, float alpha, float omega)

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
    l = m * breite * hoehe;
    this.springs = springs;
  }
  
  //todo: delete all that this species has ever drawn or done
  //basically a destructor, but keep parameters so we can modify them
  void erase() 
  {
    
  }
  
  void step()
  {
    x += vx * h;
    y += vy * h;
    alpha += omega * h;
    vy += gravity * h;
    float r = alpha / PI * 2;
    float newAlpha = (r - (int)r) * PI / 2;
    float hy = sin(newAlpha) * breite + cos(newAlpha) * hoehe;
    float hx = cos(newAlpha) * breite - sin(newAlpha) * hoehe;
    float depth = y + hy;
    if(depth > 500) // der Quader kommt auf dem Boden auf
    {
      //vy = -vy;
      y = 500 - hy;
      float vap1x = vx - sin(newAlpha) * omega * breite - cos(newAlpha) * omega * hoehe;
      float vap1y = vy + cos(newAlpha) * omega * breite - sin(newAlpha) * omega * hoehe;
      float nx = 0;
      float ny = 1;
      float mu = hx;
      float j = -2 * vap1y / (1 / m + mu * mu / l);
      vy += j / m;
      omega -= hx / l;
    }
    
    if(x > 600)
    {
      x -= 600;
    }
    
    if(x < 0)
    {
      x += 600;
    }
  }
  
  void paint()
  {
    pushMatrix();
    translate(x, y);
    rotate(alpha);
    rect(0, 0, breite * 2, hoehe * 2);
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
