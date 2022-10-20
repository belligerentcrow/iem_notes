int y =0;
int dir = 1; 
void setup(){
  size(500, 500); 
}

void draw(){
background(0); 
beginShape(); 
vertex(180, y+82); 
vertex(207, y+36); 
vertex(214, y+63); 
vertex(407, y+11); 
vertex(412, y+30); 
vertex(219, y+82); 
vertex(226, y+109);  
endShape(CLOSE); 
y+=20*dir;
if(y>500-109||y<0){
  dir = -(dir); 
}
}
