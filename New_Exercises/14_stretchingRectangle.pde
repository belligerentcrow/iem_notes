void setup(){
  size(800,120);
  frameRate(30);
}

//"global" variables - it's as if they were in the setup
int pos =0;
int pos2=0;

void draw(){
  background(254,247,232); //beige background
  stroke(49,35,5); //brown lines

  //diagonals
  line(pos,20,pos2,height-20);
  line(pos,height-20, pos2,20);
  
  //north-south
  line(pos,20,pos,height-20); 
  line(pos2,20,pos2,height-20);

  //east-ovest
  line(pos,20,pos2,20); 
  line(pos,height-20,pos2,height-20);

  for(int i = 0; i <500; i+=20){
    noStroke();
    fill(245,176,26); //ochra

    //center
    ellipse(pos2/1.5,(height/2)+3,11,11); 

    //angles
    ellipse(pos,20,10,10);
    ellipse(pos2,height-20,10,10);
    ellipse(pos,height-20,10,10);
    ellipse(pos2,20,10,10);
  }
  pos++;
  pos2+=3;
}