int d=50; 
int x; 
int y;
int x2; 


void setup(){
  size(500, 500);
  x = width/2-30; 
  y = height/2;
  x2 =width/2+30; 
}
void draw(){
 background(255, 255, 0); 
 fill(255); 
 ellipse(x, y, d, d); 
 ellipse(x2, y, d, d); 
 fill(0);
 float dx=map(mouseX, 0, width, -15, 15); 
 float dy = map(mouseY, 0, height, -15, 15); 
 ellipse(x+dx, y+dy, 5, 5); 
 ellipse(x2+dx, y+dy, 5, 5); 
}
