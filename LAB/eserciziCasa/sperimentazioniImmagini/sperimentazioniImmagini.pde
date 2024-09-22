PImage Im, ImN, ImG, ImL;
void setup(){
  size(500,500);
  Im = loadImage("napule.png");
  ImG = loadImage("yuri.jpg");
  Im.resize(256,256);
  ImG.resize(256,256);
  image(Im,0,0);
  
  
  ImN = negativo(Im);
  ImL = negativo(ImG);
  image(ImL,0,256);
  image(ImN,256,0);
  image(ImG,256,256);
}



PImage negativo(PImage I){
   PImage R = I.copy();
   R.loadPixels();
   
   float r,g,b;
   for(int i=0; i<R.pixels.length;i++){
      r = 255-red(R.pixels[i]);
      g = 255-green(R.pixels[i]);
      b = 255-blue(R.pixels[i]);
      
      R.pixels[i] = color(r,g,b);
   }
   R.updatePixels();
   return R;
}
