void setup(){
size(500,500);
}
int d = 50;
void draw(){
for(int i = d/2; i <=width; i+=d){
  for(int j = d/2; j <= height; j+=d){
    circle(i, j, d);
  }
}

}
