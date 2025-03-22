PImage Im; 

void setup(){
  size(512,512);
  Im = loadImage("lena.png");
  Im.resize(255,255);
  image(gamma(Im,4.0), 0,0);
  image(wow(Im),255,0);
  image(negativa(Im),0,255);
  image(logaritma(Im),255,255);
}

PImage gamma(PImage I, float gm){
  PImage R = I.copy();
  I.loadPixels();
  R.loadPixels();
  float C = 1/pow(255,gm-1);
  float r,g,b;
  for(int i =0;i<R.pixels.length;i++){
    r = C * pow(red(I.pixels[i]),gm);
    g = C * pow(green(I.pixels[i]),gm);
    b = C * pow(blue(I.pixels[i]),gm);
    
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;
}

PImage wow(PImage I){
  PImage R = I.copy();
  R.loadPixels();
  I.loadPixels();
  PImage leftSide = I.get(0,0,I.width/2, I.height);
  PImage rightSide = I.get(I.width/2,0, I.width, I.height);
  R.set(0,0,rightSide);
  R.set(R.width/2, 0,leftSide);
  color c = color(255,255,0);
  for(int i = 0; i < R.pixels.length; i++){
    R.set(i,i,c);
    R.set(255-i,i,c);
  }
  R.updatePixels();
  return R;
}

PImage negativa(PImage I){
  PImage R = I.copy();
  R.loadPixels();
  I.loadPixels();
  float r,g,b;
  
  for(int i = 0; i < R.pixels.length; i++){
    r = 255-red(I.pixels[i]);
    g = 255-green(I.pixels[i]);
    b = 255-blue(I.pixels[i]);
    
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;
}

PImage logaritma(PImage I){
  PImage R = createImage(I.width, I.height, RGB);
  
  R.loadPixels();
  I.loadPixels();
  
  float r,g,b;
  float L = 255/log(256);
  
  for(int i =0; i<R.pixels.length;i++){
    r = L * log(1+red(I.pixels[i]));
    g = L * log(1+green(I.pixels[i]));
    b = L * log(1+blue(I.pixels[i]));
    
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;

}
