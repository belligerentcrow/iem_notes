void setup(){
  size(560,560);
  fill(120,82,238);
  stroke(200);
}

void draw(){
  int r=10;
  background(0); //lets the background be black
  for(int y=20; y<=height-20; y+=40){
    for(int x=20; x<=width-20;x+=40){
      stroke(200);
      line(x,y,mouseX, mouseY); //interaction with Mouse functions
      noStroke();
      ellipse(x,y,r,r);
    }
  }
}

