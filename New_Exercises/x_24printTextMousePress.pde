void setup(){
  size(512,512);
  textSize(24);
  background(30);
}
int i = 10;
int j = 20;
int step = 20;
void draw(){
  if(mousePressed){
    if(mouseButton==RIGHT)
    {  
      text("R",i,j);
      i+=step;
    }
    else if (mouseButton==LEFT)
    {
      text("L",i,j);
      i+=step;
    }
    else if (mouseButton==CENTER)
    {
      text("C",i,j);
      i+=step;
    }
  }
  if(i>=width){
    i =10;
    j+=step;   
  }
}

