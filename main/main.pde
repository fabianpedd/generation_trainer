Species spec;

void setup()
{
  size(600, 600);
  rectMode(CENTER);
  spec = new Species(200, 200, 20, 20, 0, 0, 0, 0.01);
}

void draw()
{
   spec.paint();
   spec.step();
   delay(50);
}
