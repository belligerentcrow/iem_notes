PImage tardis, tardisNegativo, tardisGamma, tardisLogaritmo;
void setup(){
  tardis = loadImage("Tardis.jpg");
  tardis.resize(256,256); 
  size(512,512);
  image(tardis, 0,0);
  
  tardisNegativo = negativo(tardis);
  image(tardisNegativo,256,0);
  
  tardisGamma = gamma(tardis,1.7);
  image(tardisGamma, 0,256);
  
  tardisLogaritmo = logaritmo(tardis);
  image(tardisLogaritmo, 256,256);
}

void draw(){

}

PImage negativo(PImage I){
  PImage copiaTardis = I.copy();
  copiaTardis.loadPixels();
  float r,g,b;
  for(int i =0; i<copiaTardis.pixels.length;i++){
    r = 255-red(copiaTardis.pixels[i]);
    g = 255-green(copiaTardis.pixels[i]);
    b = 255-blue(copiaTardis.pixels[i]);
    
    copiaTardis.pixels[i] = color(r,g,b);
  }
  
  copiaTardis.updatePixels();
  
  return copiaTardis;
}


PImage gamma(PImage I, float gm){
  PImage gammaTardis = createImage(I.width, I.height, RGB);
  gammaTardis.loadPixels();
  I.loadPixels();
  
  float r,g,b;
  float variaC = 1/pow(255,gm-1);
  
  for(int i =0; i<gammaTardis.pixels.length;i++){
    r = variaC * pow(red(I.pixels[i]),gm);
    g = variaC * pow(green(I.pixels[i]),gm);
    b = variaC * pow(blue(I.pixels[i]),gm);
    
    gammaTardis.pixels[i]=color(r,g,b);
  }
  
  gammaTardis.updatePixels();
  return gammaTardis;
  
  
}

PImage logaritmo(PImage I){
  PImage logaritmoTardis = createImage(I.width, I.height, RGB);
  float r,g,b;
  logaritmoTardis.loadPixels();
  I.loadPixels();
  
  float logaC = 255/log(256);
  
  for(int i = 0; i<logaritmoTardis.pixels.length; i++){
    r = logaC * log( 1+red(I.pixels[i]));
    g = logaC * log( 1+green(I.pixels[i]));
    b = logaC * log( 1+blue(I.pixels[i]));
    
    logaritmoTardis.pixels[i] = color(r,g,b);
    }
    
    logaritmoTardis.updatePixels();
    return logaritmoTardis;
}
