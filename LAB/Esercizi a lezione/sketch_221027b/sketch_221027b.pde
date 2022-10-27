float x; 
float y; 

void setup(){
  size(500, 500); 
  noStroke(); 
}

void draw(){
   //background(0); 
   fill(0, 30); 
   rect(0, 0, width, height); 
   x = lerp(x, mouseX, 0.1); 
   y = lerp(y, mouseY, 0.1); 
   fill(255); 
   ellipse(x, y, 50, 50); 
}
