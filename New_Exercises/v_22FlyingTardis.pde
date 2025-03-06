void setup(){
  size(500,500);
  frameRate(100);
}

int move = 1;
int pos1 = 0;

void draw(){
  background(10);
  stroke(255);
  
    fill(10,30,100);
    beginShape();
    vertex(15+pos1,25);
    vertex(10+pos1,30);
    vertex(10+pos1,100);
    vertex(5+pos1,100);
    vertex(5+pos1,105);
    vertex(50+pos1,105);
    vertex(50+pos1,100);
    vertex(45+pos1,100);
    vertex(45+pos1, 30);
    vertex(40+pos1, 25);
    vertex(30+pos1, 25);
    vertex(30+pos1, 15);
    vertex(25+pos1, 15);
    vertex(25+pos1,25);
    vertex(15+pos1,25);
    endShape();
        
    pos1+=move;
    if(pos1>=width){
      move = -1;
    }else if(pos1<= 0){
      move = 1;
    }
    
}