void setup(){
size(500,500);
}

float k = 20;
float x = 10;
float y = 250;
float i = 0;

void draw(){

line(0,250,250,250);
noFill();
stroke(0);
rect(0, 150, 200,200);
for(; i < 10; i=i+1){
  circle(x, y, k);
  k=k+20;
  x=x+10;
}

}
