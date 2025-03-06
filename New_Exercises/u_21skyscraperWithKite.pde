void setup(){
size(495, 520);
strokeWeight(5);
strokeJoin(BEVEL);
}

color windows = color(60,60,60);
int pos1 = 0;
int pos2 = 0;
int direction = 1;
int stopValue = 0;

void draw(){
background(30,180,255);
fill(40,225,100);
rect(0,(height*3/4),width,height);
fill(200);
rect(20, 60,140,(height*3/4));
for(int i = 30; i<149; i+=30){
  for(int j = 70; j <height*3/4; j+=40){ 
    fill(windows);
    rect(i,j,18,18);
    }
  }
  
  fill(255,0,0);
  beginShape();
  vertex(pos1,20+pos2);
  vertex(pos1+50, 90+pos2);
  vertex(pos1,160+pos2);
  vertex(pos1-50,90+pos2);
  vertex(pos1,20+pos2);
  endShape();
  
  stroke(255,255,0);
  line(pos1, 20+pos2,pos1,160+pos2);
  line(pos1+50,90+pos2,pos1-50,90+pos2);
  stroke(0);
  
  if(!mousePressed){
    pos1++;
  }
  
  pos2+=direction;
  
  if(pos1>=width+50){
    pos1 = -50;
  }
  if(pos2>=70){
    direction = -1;
  }else if(pos2<=-20){
    direction = 1;
  }
}

void mousePressed(){
  windows = color(255,255,0);
  stopValue = direction;
  direction = 0;
  
}

void mouseReleased(){
  windows = color(60);
  direction = stopValue;
}