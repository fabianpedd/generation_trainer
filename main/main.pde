Species spec_test;



void setup()
{
  size(600, 600);
  rectMode(CENTER);

  spec_test = new Species(200, 200, 20, 20, 0, 0, 0.6, 0, null);

}

void draw()
{
   rect(300, 300, 600, 600);
   spec_test.paint();
   spec_test.step();
   delay(40);
}
