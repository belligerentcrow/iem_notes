PImage Im;

void setup(){
  size(512,512);
  Im = loadImage("lena.png");
  
  Im.resize(256,256);
  image(Im, 0,0);
  //Im.filter(GRAY);
  image(quantizzaz(Im, 8),256,0);
}

PImage quantizzaz(PImage I, int k){
  PImage R = I.copy();
  R.loadPixels();
 
  int r,g,b;
  
  for(int i = 0; i<R.pixels.length;i++){
    
    r = floor( (red(R.pixels[i])*k)/256 );
    g = floor( (green(R.pixels[i])*k)/256);
    b = floor( (blue(R.pixels[i])*k)/256);
    
    r = int( (float(r)/(k-1)) *255);
    g = int( (float(g)/(k-1)) *255);
    b = int( (float(b)/(k-1)) *255);
    
    //q = floor((green(R.pixels[i])*k)/256);
    //q = int((float(q)/(k-1)) *255);
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;
}
