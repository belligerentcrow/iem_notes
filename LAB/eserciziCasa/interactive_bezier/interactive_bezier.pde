void setup(){
size(500,500);
noFill();
}

void draw(){
background(255);
stroke(255,0,0);
line(200,255,mouseX,mouseY);
stroke(0);
bezier(0,255,40,100,mouseX,mouseY,200,255);
}
