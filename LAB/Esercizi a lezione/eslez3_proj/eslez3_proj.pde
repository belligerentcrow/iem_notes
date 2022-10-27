//quanto varierà il diametro di ogni cerchio rispetto al precedente
int dd = 30; 
int x = width/2; 
int y = height/2; 


void setup(){
  size(500,500); 
  strokeWeight(5); 
   
}

void draw(){
   background(0);
  for(int d = width; d >= 50; d-=dd){
     fill(random(255), random(255), random(255)); 
     stroke(random(255), random(255), random(255)); 
     ellipse(x, y, d, d); 
   }
   if(keyPressed){
     if(key=='a'&&key=='w'){
       x-=20; 
       y-=20; 
     }
     
     if(key=='a'){
       x-=20; 
     }
     if(key=='d'){
       x+=20; 
     }
     if(key=='w'){
       y-=20;       
     }
     if(key=='s'){
       y+=20; 
     }
     
     
  }
}
