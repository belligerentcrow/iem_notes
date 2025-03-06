//Default: ROUND. Possible values: ROUND, SQUARE, PROJECT

size(50*16, 50*9);
fill(200,20,30);
rect(0,0,width, height/3);
fill(0);
rect(0,height/3, width, (height * 2/3));
fill(200,20,30);
rect(0, (height * 2/3), width, height);
strokeCap(SQUARE);
stroke(255);
fill(255);
strokeWeight(55);
int step = 0;
int heightgap = 50;

for(int i = 0; i < 3; i++){
  line(60+step, height/2-heightgap, 200+step, height/2+heightgap);
  line(60+step, height/2+heightgap, 200+step, height/2-heightgap);
  step +=250;
}
