size(480, 480);
background(0);
noStroke();
int r=40;
for(int y=0; y<= height; y+=r){
  for(int x=0;x<=width;x+=r){
    fill(0,62,42);    //dark green
    ellipse(x,y,r,r); //all the balls in dark green
    
    if(y==x||(y+x)==480||x==width/2 ||y==height/2){
      fill(239,207,66);  //yellow
      ellipse(x,y,r,r); //rewrite yellow one above
      fill(252,255,214); // lighter yellow
      ellipse(x,y,20,20); //smaller circles in rays
  }
    
  }
}