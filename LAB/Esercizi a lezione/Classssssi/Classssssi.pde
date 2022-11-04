ArrayList<Ball> bs = new ArrayList<Ball>();

int d = 60; 

void setup(){
  size(800, 800); 
  background(0); 
};

void draw(){
  fill(0,20);
  noStroke(); 
  rect(0,0, width,height); 
  for(Ball b:bs){
    b.run(); 
  }
};

void keyPressed(){
  if(key=='b' || key =='B'){
    bs.add(new Ball(random(d/2, width-d/2),random(d/2, height-d/2), random(5, d), random(1,10), random(1,10))); 
  }
   
  if(key == 'g' || key=='G'){
        bs.add(new GreenBall(random(d/2, width-d/2),random(d/2, height-d/2), random(5, d), random(10,15), random(10,15))); 

  }
  
  switch(key){
    case 'p':{
      noLoop(); 
      break; 
    }
    case 'v':{
      loop(); 
      break; 
    }
    case 'r':{
      setup(); 
      break; 
    }
    case 'c':{
      bs.remove(bs.size()-1); 
    }
    default:{};
  }
};
