PImage H;
color c;
int x,y;

void setup(){
  size(600,600);
  String url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Phaistos_Disc_-_Side_A_-_6380_-_crop1.jpg/1024px-Phaistos_Disc_-_Side_A_-_6380_-_crop1.jpg";
  H=loadImage(url, "jpg");
  H.resize(500,500);
  c=color(0);
  x=width/2-H.width/2;
  y=height/2-H.height/2;
  
}
void draw(){
  background(c);
  c=H.get(mouseX-x,mouseY-y);
  
  //println("R: "+red(c)+ " G: "+green(c)+" B: "+blue(c));
  image(H,x,y);
  
}

void mousePressed(){
  if(mouseButton==LEFT){
    println("R: "+red(c)+ " G: "+green(c)+" B: "+blue(c));
  }
}  