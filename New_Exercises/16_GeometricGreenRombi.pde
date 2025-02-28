int pos = 0;
int dir = 1;

void setup(){
  size(300,300);
  frameRate(120);
}

void draw(){
  background(255);
  
  //linee verticali centrali
  line(pos,0,pos,height);
  line(0,pos,height,pos);
  
  //triangolo su
  line(width,-pos,0,pos);
  line(width,pos,0,-pos);
  
  //triangolo giu
  line(width/2,height,0,pos);
  line(width/2,height,width,pos);
  
  //triangolo sinistra
  line(0,height/2,pos, 0);
  line(0,height/2,pos,height);
  
  //triangolo destra
  line(width,height/2,pos,0);
  line(width,height/2,pos,height);
  
  //rombo verde grande
  fill(0,200,0,50);
  noStroke();
  beginShape();
  vertex(width/2,0);
  vertex(width, height/2);
  vertex(width/2,height);
  vertex(0,height/2);
  vertex(width/2,0);
  endShape();
  
  //rombo verde piccolo
  beginShape();
  vertex(width/2,200);
  vertex(width-200, height/2);
  vertex(width/2,height-200);
  vertex(200,height/2);
  vertex(width/2,200);
  endShape();
  stroke(0);

  if(pos>width){
    dir =-1;
  }
  if(pos<0){
    dir = 1;
  }
  pos+=dir;
}