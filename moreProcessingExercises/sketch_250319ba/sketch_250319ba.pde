PImage ImLena;

void setup(){
    size(768,256);
    ImLena = loadImage("lena.png");
    ImLena.filter(GRAY);
    ImLena.resize(256,256);
    image(ImLena,0,0);
    PImage revv = rev(ImLena); 
    println("ok1");
    image(revv,256,0);
    println("ok2");
    PImage lenaCol = loadImage("lena.png");
    lenaCol.resize(256,256);
    PImage revvCol = rev(lenaCol);
    println("ok3");
    image(negativa(revvCol),512,0);
    println("ok4");
}

void draw(){

}

PImage rev (PImage I){
  PImage R = I.copy();
  PImage halfsx = I.get(0,0, I.width/2, I.height);
  PImage halfdx = I.get(I.width/2, 0, I.width, I.height);
  R.set(0,0,halfdx);
  R.set(I.width/2,0, halfsx);
  R.loadPixels();
  color c = color(255,255,0);
  
  for(int j = 0; j<R.height; j++){
    for(int i=0; i<R.width; i++){
      println(i);
      if(i==j)
        R.set(i,j,c);
    }
  }
  
  R.updatePixels();
  return R;
}

PImage negativa(PImage I){
  PImage R = I.copy();
  R.loadPixels();
  color c;
  for(int j =0; j<R.pixels.length; j++){
    for(int i = 0; i<R.pixels.length; i++){
      c = 255-R.get(j,i);
      R.set(j,i,c);
    }
  }
  R.updatePixels();
  return R;
}
