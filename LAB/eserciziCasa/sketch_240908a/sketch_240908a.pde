float x = 10;
float xDelta = 5;
float y = 50;

void setup(){
size(500,500);
frameRate(60);
}

void draw(){
background(0);
strokeWeight(4);
if(x>=100 && x<=200){
  fill(255,255,0);
  rect(x,y,20,20);
}else if(x >= 201 && x <=350){
  fill(0,255,0);
  ellipse(x,y,20,20);
  }else{
  fill(255,0,0);
  rect(x,y,20,20);
  }
x=x+xDelta;
  if(x<10 || x>=width-20){
  xDelta=-xDelta;
  }
}
