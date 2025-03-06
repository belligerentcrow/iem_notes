void setup(){
  size(300,300);
}

int pos = -40;
int pos2 = width+40;

void draw(){
  background(127);
  //upper-left to bottom-right 
  stroke(0);
      //vertical
    line(pos,0,pos,height);
    line(pos+10,0,pos+10,height);
    line(pos+20,0,pos+20,height);
    line(pos+30,0,pos+30,height);
    line(pos+40,0,pos+40,height);
      //horizontal
    line(0,pos,width,pos);
    line(0,pos+10,width,pos+10);
    line(0,pos+20,width,pos+20);
    line(0,pos+30,width,pos+30);
    line(0,pos+40,width,pos+40);
    
    //bottom-right to top-left
    stroke(255);
      //vertical
    line(pos2,0,pos2,height);
    line(pos2-10,0, pos2-10,height);
    line(pos2-20,0, pos2-20,height);
    line(pos2-30,0, pos2-30,height);
    line(pos2-40,0, pos2-40,height);
      //horizontal
    line(0,pos2,width, pos2);
    line(0,pos2-10,width,pos2-10);
    line(0,pos2-20,width,pos2-20);
    line(0,pos2-30,width,pos2-30);
    line(0,pos2-40,width,pos2-40);
    
    //center
    fill(255,0,0,50);
    rect(width/2-20,height/2-20,40,40);
    
    if(pos>width){
      pos=-40;
      pos2=width+40;
    }
    pos++;
    pos2--;
}