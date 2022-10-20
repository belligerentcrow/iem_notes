int q = 10; 
int d; 

void setup(){
 size(500, 500);
 background(width); 
 d = width/q; 
 noStroke(); 
 colorMode(RGB, width); //cambia il range di valori del colore (default = [0, 255]) 
                        //utile anche [0, 1] per le percentuali
}

void draw(){
  
   for(int y = d/2; y<= height; y+=d){
     for(int x = d/2; x<= height; x+=d){
         if(dist(x, y, mouseX, mouseY)<=d/2){
           fill(x, y, width); 
           ellipse(x, y, d, d); 
         }else{
           fill(x, y, 0); 
           //ellipse(x, y, d, d);
         }
      }
   }
}
