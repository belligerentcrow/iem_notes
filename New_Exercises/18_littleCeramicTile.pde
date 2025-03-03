ellipseMode(CORNER);
background(255);
fill(0,225,0);
ellipse(25,25,50,50);

ellipseMode(CORNERS);
fill(25,125,125,175);
ellipse(25,25,50,50);
ellipse(50,50,75,75);
ellipse(50,50,25,75);
ellipse(50,50,75,25);
fill(127,20,20,150);

ellipseMode(CENTER);
int step = 10;
for(int i = 30; i < 75; i+=10){
  for(int j = 30; j<75; j+=10){
    ellipse(i,j,10,10);
  }
}