int l = 100; 
int a = 0; 
int y = 0; 
float v = 0;
float g = 0.1; 
void setup(){
    size(500, 500); 
    noStroke(); 
    rectMode(CENTER); 
}

void draw(){
    background(0); 
    pushMatrix(); 
    translate(width/2-100, height/2);
    rotate(radians(a)); //posso usare millis()/qualcosa per dare tempo
    fill(255); 
    rect(0, 0, l, l); 
    popMatrix(); 
    pushMatrix(); 
    translate(width/2+100, height/2); 
    rotate(radians(-a));
    fill(0, 255, 0); 
    rect(0, 0, l, l);
    popMatrix(); 
    rect(width/2, y, 20, 20); 
    y+=v; 
    v+=g; 
    if(y>=height){
      v = v *-0.70; 
    }
    a+=5;   

}
