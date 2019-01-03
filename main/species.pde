class Species
{
  float x, y; // position
  float breite, hoehe; // dimension
  float vx, vy; // velocity
  float alpha; // angle
  float omega; // angular velocity
  final float gravity = 0.2;
  
  public Species(float x, float y, float breite, float hoehe, float vx, float vy, float alpha, float omega)
  {
    this.x = x;
    this.y = y;
    this.breite = breite;
    this.hoehe = hoehe;
    this.vx = vx;
    this.vy = vy;
    this.alpha = alpha;
    this.omega = omega;
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
}
