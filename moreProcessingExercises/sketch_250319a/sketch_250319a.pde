PImage ImLena,ImTardis, ImTardisQuant, ImQuantizzata;
int K; 
void setup(){
  K=2;
  ImLena = loadImage("lena.png");
  ImTardis = loadImage("Tardis.jpg");
  ImTardis.resize(512,512);
  ImLena.filter(GRAY);
  size(1024, 1024);
  image(ImLena,0,0);
  ImQuantizzata = quantizza(ImLena, K);
  image(ImQuantizzata, 512,0); 
  image(ImTardis,512, 512);
  ImTardisQuant = quantizza(ImTardis,K);
  image(ImTardisQuant,0,512);
}

void draw(){

}

PImage quantizza(PImage ImDaQuantizzare, int k){
  PImage ImQuantizzata = ImDaQuantizzare.copy();
  ImQuantizzata.loadPixels();
  
  int q;
  for(int i =0; i<ImQuantizzata.pixels.length; i++){
    q = floor((blue(ImQuantizzata.pixels[i]) * k) / 256);
    q = int ( (float(q) / (k-1) ) *255);
    // q = int (lerp(0 , 255, float(q) / (k-1) ) );
    
    ImQuantizzata.pixels[i] = color(q);
  }
  ImQuantizzata.updatePixels();
  return ImQuantizzata;
}

void keyPressed(){
  if((key=='o') && (K<256)){
    K++;
    image(quantizza(ImLena,K), 512,0);
    image(quantizza(ImTardis,K), 0, 512);
    println(K);
  }
  if((key=='p') && (K>2)){
    K--;
    image(quantizza(ImLena,K),512,0);
    image(quantizza(ImTardis,K), 0, 512);
    println(K);
  }
}
