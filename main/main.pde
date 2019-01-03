Species spec_test;



void setup()
{
  size(600, 600);
  rectMode(CENTER);
  spec_test = new Species(200, 200, 20, 20, 0, 0, 0, 0.01);
}

void draw()
{
   spec_test.paint();
   spec_test.step();
   delay(50);
}
