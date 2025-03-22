PImage I, H;
PImage subI;
String url;
void setup(){
  size(512,512);
  I=loadImage("Twelve.jpg");
  imageMode(CENTER);
  I.resize(int(I.width/2.5), int(I.height/2.5));
  I.filter(GRAY);
  subI = loadImage("Tardis.jpg");
  subI.resize(int(subI.width/8), int(subI.height/8));
  image(I, width/2,height/2);
  image(subI,width/2+170, height/2);
}
