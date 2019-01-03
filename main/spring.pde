class Spring {
  private float x = 0.0;    //x location on cube 
  private float y = 0.0;    //y location on cube
  private float pow = 0.0;  //pow of cube in accelartion 
  
  public Spring(float x, float y, float pow) {
    this.x = x;
    this.y = y;
    this.pow = pow;
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }
  
  float getPow() {
    return pow;
  }
}
