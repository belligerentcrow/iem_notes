size(800, 800); 
int l = 65; 
int q = 160; 
int hh = height/4; 
int ww = width/2; 

background(200, 230, 250); 
strokeWeight(8); 
stroke(100, 150, 100); 
line(ww, hh, ww, height-(hh)); 
noStroke(); 
fill(120, 0, 120); 
 
  circle(ww-l, hh+l, q); 
  circle(ww+l, hh-l, q); 
  circle(ww-l, hh-l, q); 
  circle(ww+l, hh+l, q); 
 
q=100; 
fill(175, 0, 175); 
  circle(ww, hh-l, q); 
  circle(ww-l, hh-(l/2), q);
  circle(ww-l, hh+(l/2), q); 
  circle(ww+l, hh-(l/2), q); 
  circle(ww+l, hh+(l/2), q); 
  circle(ww, hh+l, q); 
  
   l= 25; 
   q= 80;
  
fill(255, 0, 255); 
  circle(ww-l, hh+l, q); 
  circle(ww+l, hh-l, q); 
  circle(ww-l, hh-l, q); 
  circle(ww+l, hh+l, q); 
  
  
fill(230, 0, 0); 
  circle(ww, hh, 70); 
  
