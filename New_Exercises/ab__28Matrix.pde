float [] y = new float[1000];
char [] c = new char[50];
void setup(){
  frameRate(90);
  size(500,500);
  noStroke();
  fill(0,255,0);
  for(int i = 0; i < y.length; i++){
    y[i] = random(-1000,200);
    
  }
  for(int i = 0; i < c.length; i++){
    c[i] = (char) int(random(33,127));
  }
}
int j = 0;
void draw(){
  background(0);
  for(int i = 0; i<y.length; i++){
    y[i]+=1;
    float moltiplicatore=width/float(y.length);
    float x = i*moltiplicatore;
    j = int(random(0,49));
    text(c[j], x, y[i]);
  }
  
}