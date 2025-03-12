void setup(){
  size(512,512);
  stroke(255,0,0);
  strokeWeight(10);
  background(255);
}

void draw(){
  stroke(currentColor);
  if(mousePressed){
    line(pmouseX, pmouseY, mouseX, mouseY);
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
  if(key == 'p' || key == 'P'){
    noStroke();
    rect(0,0,width, height);
    stroke(currentColor);
  }
}
  