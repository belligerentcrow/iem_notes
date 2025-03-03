size(500,500);

color c1 = color(255,0,0);
color c2 = #ff8000;
color c3 = color(255,213,1);
color c4 = #7dde01;
color c5 = color(1,153,255);
noStroke();
fill(c1);
rect(0,0,width/5,height);
fill(c2);
rect(width/5,0,width/5,height);
fill(c3);
rect(width/5+width/5, 0, width/5, height);
fill(c4);
rect(width/5+width/5+width/5, 0, width/5,height);
fill(c5);
rect(width/5+width/5+width/5+width/5, 0, width/5,height);
fill(255);
textAlign(CENTER);
textSize(64);
text("Bolaroid", width/2, height/2*1.3);
fill(0,0,0,25);
rect(0,0,width,height/2);