float [] r = new float [10];

//ALERT: FLASHING 
void setup(){
  size(512,512);
  for (int i = 0; i<r.length; i++){
    r[i] = i*10;  
  }
  noStroke();
  frameRate(5);
}

void draw(){
  background(255);
  for (int i = r.length-1; i >=0; i--){
     
    for(int j = 50; j<width-50; j+=50){
      for(int z = 50; z<height-50; z+=50){
      fill(random(0,255), random(0,255),random(0,255),80);
      ellipse(j, z, r[i], r[i]);
      }
    }
    
  }
}

void mousePressed(){
  noLoop();
}

void mouseReleased(){
  loop();
}