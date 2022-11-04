ArrayList<Piece_super> myPieces = new ArrayList<Piece_super>(); 
int q=50; 

int nextShape =0; 

void setup(){
size(800, 800); 
background(0); 

}

void draw(){
  stroke(0, 0, 255); 
  background(0); 
  strokeWeight(5); 
  line(200, 100, 200, 650); //"contenitore" blu
  line(200, 650, 600, 650); 
  line(600, 650, 600, 100); 
  
  for(Piece_super b:myPieces){
   b.run();  
  }
  
  
  stroke(30); 
  strokeWeight(2); 
  for(int i = 0; i < width; i+=q){ //griglia pixel: alla fine
    line(i, 0, i, height); 
    line(0, i, width, i); 
  }
}

void keyPressed(){
  if(key == '\n'){
    nextShape = (int)random(1,3); 
    switch(nextShape){
    
      case 1:{
        myPieces.add(new Light_Blue_I()); 
        break; 
      }
      case 2:{
        myPieces.add(new Yellow_O()); 
        break;
      }
       default:{}
     }
  }
  if(key == 'd'||key=='D'){
    Piece_super h =myPieces.get(myPieces.size()-1); 
    h.moveRight();
  }
  if(key == 'a'||key=='A'){
   Piece_super h = myPieces.get(myPieces.size()-1); 
   h.moveLeft(); 
  }
  if(key == 'r'||key =='R'){
     myPieces.remove(myPieces.size()-1);
   setup();  
  }
};
