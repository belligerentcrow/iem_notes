PImage I, subI;
float r,g,b= 255;
color c;

void setup(){
  I = createImage(500,500, RGB);
  subI = createImage(150,150,RGB);
  size(500,500);
  for(int y = 0; y<I.height; y++){
    for(int x = 0; x<I.width; x++){
       r = lerp(0,255,float(x)/I.width);
       g = lerp(0,255,float(y)/I.height);
       c = color(r,g,b);
       I.set(x,y,c);
    }
  }
  b = 0;
  for(int j = 0; j<subI.height; j++){
    for(int i = 0; i<subI.width; i++){
      r = lerp(0, 255,float(i)/subI.width);
      g = lerp(0, 255,float(j)/subI.height);
      c = color(r,g,b);
      subI.set(i,j,c);
     }
  }
}

void draw(){
  image(I,0,0);
  subI.resize(width/2, height);
  image(subI,width/2, 0);
  
}