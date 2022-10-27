int x1 = 50; 
int y1 = 50; 
int x2 = 450;
int y2 = 400; 
int q = 30; 
int col = 0; 
void setup(){
  size(500,500);
    background(0); 
  stroke(255); 
  line(50, 50, 450, 400); 
  stroke(255, 0, 0); 
  strokeWeight(10);  
  fill(255, 0, 0); 
  point(50, 50, 30); 
  point(450, 400, 30); 
  for(int i = 0; i<=q; i++){
    float x= lerp(x1, x2, (float)i/q); 
    float y= lerp(y1, y2, (float)i/q); 
    col += 5; 
    stroke (255, col, col); 
    point(x, y); 
  }
}
