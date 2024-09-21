int d = 50;
void setup(){
size(500,500);
noStroke();
background(0);
rectMode(CENTER);
}

void draw(){
  for(int y=d/2; y<height;y+=d){
    for(int x=d/2; x<width;x+=d){
      if(dist(x,y,mouseX,mouseY) < (d/2)){
        fill(mouseX,mouseY,(1-(mouseX-mouseY)));
      }else{
        fill(255);
      }
      rect(x,y,d,d);
    }
  }
}
