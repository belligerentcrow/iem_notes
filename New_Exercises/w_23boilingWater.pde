void setup(){
  size(500,500);
  background(0,255,0);
  noStroke();
  frameRate(15);
}


int l = 50;
int i = height;
void draw(){
  
  background(0,0,255);
  for(int y = 0; y<= height; y+=l){
  for(int x = 0; x<= width; x+=l){
    fill(random(255),130);
    ellipse(x+random(-15,15),y+random(-15,15), l,l);
  }
}
  
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("boiling....",width/2, height/2-height/3);
  
  
  for(int i = 0; i <10; i ++){
    ellipse(random(0,width),height-random(15,height/2),30,30);
  }

}


