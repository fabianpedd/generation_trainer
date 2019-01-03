class Evaluate {
  
  final int num = 1;    //how many we are training 
  int itr = 0;    //how many itr we train them
  Species species[num];    //where our little friends life and prosper and die
  
  
  double start_y = 0.0;    //start pos
  double start_x = 0.0;
  
  
  double max_size_x = 0.0;    //x size of rectangle variations
  double min_size_x = 0.0;
  
  double max_size_y = 0.0;    //y size of rectangle variatons
  double min_size_y = 0.0;
  
  int max_spring_number = 10;  //spring number variations
  int min_spring_number = 2;
  
  int max_spring_pow = 1.0;    //spring power variation (?!?! what unit, m/(s^2) ?!?!)
  int min_spring_pow = 0.1;
  
  
  double max_time = ;    //how much time we give them max in sec
  double distance = 0.0;    //how far they have to travel to make in pixel
  double time_it_took = 0.0;    //how long it took them in sec
  double score = 0.0     //the score they get after each round
  
  
  double change_size_x = 0.1;    //how much just we adjust each rectangle by? 
  double change_size_y = 0.1;
  int change_spring_num = 0.1;
  double change_spring_pow = 0.1;
  
  
  
  public evaluate() {
    for(int i=0; i<num; i++) {
      float new_width = random(min_size_x, max_size_x);
      float new_height = random(min_size_y, max_size_y);
      
      int new_spring_count = (int) random(min_spring_number, max_spring_number);
      Spring springs[new_spring_count];
      
      for(int j=0; j<new_spring_count; j++) {
        float new_spring_pos_x = random(0, new_width * 2 + new_height * 2);
        float new_spring_pos_y = 0.0;
        
        if(new_spring_pos_x <= new_width) {
          new_spring_pos_x = new_spring_pos_x;
          new_spring_pos_y = new_height / 2.0;
          
        } else if(new_spring_pos_x <= new_width + new_height) {
          new_spring_pos_x = new_width / 2.0;
          new_spring_pos_y = new_spring_pos_x - new_width;
          
        } else if(new_spring_pos_x <= new_width*2 + new_height) {
          new_spring_pos_x = new_spring_pos_x - (new_width + new_height);
          new_spring_pos_y = - new_height / 2.0;
          
        } else {
          new_spring_pos_x = - new_width / 2.0;
          new_spring_pos_y = new_spring_pos_x - (new_width*2 + new_height);
          
        }
        
        springs[i] = new Spring(new_spring_pos_x, new_spring_pos_y, 
          random(min_spring_power, max_spring_power);
      } 
      species[i] = new Species(start_x, start_y, //position
        new_width, new_height, //size
        0.0, 0.0, //linear speed
        0.0, 0.0, //rotational speed
        springs); //spring array with realtive positions from middle of rectangle 
  }
  
  private void runIndEval() {
    time_it_took = millis();
    while(1) {
     
      species.step();
      species.paint();
      
      if(species.getX() >= distance || millis() - time_it_took > max_time) {
        time_it_took = millis() - time_it_took;
        score = time_it_took * (distance / species.getX());
        break;
      }
    }
  }
  
  private void runEval() {
     
  }
  
  public void runTotalEval
  
  private float randChanger(float var, float amount) {
    
  }
  
  private int randChanger(int var, int amount) {
    
  }
  
  
}
