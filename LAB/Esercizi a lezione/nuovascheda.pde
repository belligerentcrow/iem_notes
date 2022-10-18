/*
//ciclo for

//for(Inizializzazione; Condizione di permanenza; Aggiormento){}
int q = width; 
size(1000, 1000); 
int s = width/q; 
int d=width/q; 

colorMode(RGB, width); 
background(0);
/*for(int x=10; x<=width; x+=s){
  line(x,0,x,height); 
  point(x,0);
}
*/
noStroke(); 
colorMode(RGB, width); 
for(int y = d/2; y <=height; y+=d){
   
  for(int x=d/2; x<=width; x+=d){
    fill(x, y, width);
    rect(x, y, d, d); 
  }
}
*/
