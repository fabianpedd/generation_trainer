Species spec;

void setup()
{
  size(600, 600);
  rectMode(CENTER);
  spec = new Species(200, 200, 10, 20, 0, 0, 0.6, 0);
}

void draw()
{
   rect(300, 300, 600, 600);
   spec.paint();
   spec.step();
   delay(40);
}
