PImage river;
color c; 
int x,y;

void setup(){
  size(500,500);
  
}

void draw(){
  river=loadImage("river.jpg");
  river.resize(river.width/2, river.height/2);
  background(0);
  imageMode(CENTER);
  image(river, width/2,height/2);
}
