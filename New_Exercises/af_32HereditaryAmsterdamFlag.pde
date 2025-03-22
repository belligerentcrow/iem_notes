//Default: ROUND. Possible values: ROUND, SQUARE, PROJECT



void setup(){
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
  
}

ThreeCrosses tc = new ThreeCrosses();
ThreeSmallerCrosses tsc = new ThreeSmallerCrosses();
void draw(){
  tsc.createSmallerCrosses();
   tc.createCrosses();
   
}


class ThreeCrosses{
    int step = 0;
    int heightgap = 50;
  void createCrosses(){
      for(int i = 0; i < 3; i++){
      line(60+step, height/2-heightgap, 200+step, height/2+heightgap);
      line(60+step, height/2+heightgap, 200+step, height/2-heightgap);
      step +=250;
    }
    step = 0;
  }
}

class ThreeSmallerCrosses extends ThreeCrosses{
  void createSmallerCrosses(){
    step=70;
    stroke(70);
    
    for(int i = 0; i < 3; i++){
      line(60+step, height/2-heightgap, 200+step, height/2+heightgap);
      line(60+step, height/2+heightgap, 200+step, height/2-heightgap);
      step +=250;
    }
    
    step =0;
    stroke(255);
  }
}