int i = 0; 

void setup(){
  println("Sono nel Setup"); 
  frameRate(1); 
}

void draw(){
  println("sono nel draw"+i);  
  i++; 
}
