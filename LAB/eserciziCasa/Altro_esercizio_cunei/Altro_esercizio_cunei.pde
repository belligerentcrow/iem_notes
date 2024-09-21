void setup(){
size(500,500);
}
int M = 50;
float x1 = 10;
float y1 = 10;
float x2 = 100;
float y2 = 100;

float u1 = 10;
float v1 = 190;
float u2 = 100;
float v2 = 100;

int j = 20;
int p = 5;

void draw(){
for(int i = 0; i < M; i++){
  line(x1, y1, x2,y2);
  line(u1, v1, u2, v2);
  circle(x2-30,100+p,5);
  
  x1+=j;
  x2+=j;
  u1+=j;
  u2+=j;
  p = p * (-1);
}
line(0, 100, width, 100);
}
