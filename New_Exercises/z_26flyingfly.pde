float vel = 3;
int d = 20;
float x;
float y;

void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
}

void draw(){
  background(60);
  fill(0);
  stroke(0);
  x = x+random(-vel,+vel);
  y = y+random(-vel,+vel);
  ellipse(x,y,d,d);
  fill(0,200,255);
  beginShape();
  vertex(x,y);
  vertex(x-10,y-20);
  vertex(x+10,y-35);
  vertex(x+5,y-10);
  vertex(x,y);
  endShape();
  beginShape();
  vertex(x,y);
  vertex(x,y-20);
  vertex(x+20,y-35);
  vertex(x+15,y-10);
  vertex(x,y);
  endShape();
  fill(120);
  ellipse(x-10,y-5,d-10,d-10);
  line(x,y,x-15,y+15);
  line(x,y,x-5, y+20);
  line(x,y,x+10,y+15);
  line(x,y,x+5,y+20);
  fill(255);
  text("bzzzz",x-50,y-30);
}

