class Evaluate {
  
  final int num = 1;    //how many we are training 
  int itr = 0;    //how many itr we train them
  Species species[];    //where our little friends life and prosper and die
  
  
  float start_y = 0.0;    //start pos
  float start_x = 0.0;
  
  
  float max_size_x = 0.0;    //x size of rectangle variations
  float min_size_x = 0.0;
  
  float max_size_y = 0.0;    //y size of rectangle variatons
  float min_size_y = 0.0;
  
  int max_spring_number = 10;  //spring number variations
  int min_spring_number = 2;
  
  float max_spring_pow = 1.0;    //spring power variation (?!?! what unit, m/(s^2) ?!?!)
  float min_spring_pow = 0.1;
  
  
  float max_time = 20;    //how much time we give them max in sec
  float distance = 800.0;    //how far they have to travel to make it in pixel
  
  
  float change_size_x = 0.1;    //how much just we adjust each rectangle by? 
  float change_size_y = 0.1;
  float change_spring_num = 0.1;
  float change_spring_pow = 0.1;
  
  
  
  public Evaluate() {
    species = new Species[num];
    
    for(int i=0; i<num; i++) {
      float new_width = random(min_size_x, max_size_x);
      float new_height = random(min_size_y, max_size_y);
      int new_spring_count = (int) random(min_spring_number, max_spring_number);
      
      Spring[] springs = new Spring[new_spring_count];
      
      for(int j=0; j<new_spring_count; j++) {
        float new_spring_pos_x = random(0, new_width * 2 + new_height * 2);
        float new_spring_pos_y = 0.0;
        
        if(new_spring_pos_x <= new_width) {
          //new_spring_pos_x = new_spring_pos_x;
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
        
        springs[j] = new Spring(new_spring_pos_x, new_spring_pos_y, 
          random(min_spring_pow, max_spring_pow));
      } 
      species[i] = new Species(start_x, start_y, //position
        new_width, new_height, //size
        0.0, 0.0, //linear speed
        0.0, 0.0, //rotational speed
        springs); //spring array with realtive positions from middle of rectangle
    }
  }
  
  private float runIndEval(int which) {
    float score = 0.0;
    float time_it_took = millis();
    
    while(true) {
     
      species[which].step();
      species[which].paint();
      
      if(species[which].getX() >= distance || millis() - time_it_took > max_time) {
        time_it_took = millis() - time_it_took;
        score = time_it_took * (distance / species[which].getX());
        break;
      }
    }
    species[which].erase();
    return score;
  }
  
  private void runEval() {
     
  }
  
  public void runTotalEval() {
    
  }
  
  private float randChanger(float var, float amount) {
    return 0.0;
  }
  
  private int randChanger(int var, int amount) {
    return 0;
  }
  
  
}
