void setup(){
  size(512,512);
  stroke(255,0,0);
  background(255);
}

int brushSize=10;
void draw(){
  stroke(currentColor);
  strokeWeight(brushSize);
  if(mousePressed){
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  if(keyPressed && (key==CODED)){
    if(keyCode == UP && brushSize <30){
      brushSize++;
    }
    if(keyCode ==DOWN && brushSize>1){
      brushSize--;
    }
  }
}

color currentColor;

void keyPressed(){
  if(key == 'r' || key == 'R'){
    currentColor= color(255,0,0);
  }
  if(key == 'g' || key == 'G'){
    currentColor = color(0,255,0);
  }
  if(key == 'b' || key == 'B'){
    currentColor = color(0,0,255);
  }
  if(key == 'c' || key == 'C'){
    currentColor = color(random(255),random(255),random(255));
  }
  if(key=='e' ||key== 'E'){
    currentColor = color(255);
  }
  if(key == 'p' || key == 'P'){
    noStroke();
    rect(0,0,width, height);
    stroke(currentColor);
  }
  
}
  