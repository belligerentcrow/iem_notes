class Light_Blue_I extends Piece_super{
  int col1 = 41; 
  int col2 = 247; 
  int col3 = 255; 
  int a =0; 
  int lowerBound =0; 
  int leftBound = 2; 
  int rightBound = 2; 
  int c = 0; 
  int mov =0; 
  Light_Blue_I(){
    
  }
  
  void display(){
     fill(col1, col2, col3); 
     noStroke(); 
     quad((6*super.unit)+mov, 0+a, (10*super.unit)+mov, 0+a, (10*super.unit)+mov, super.unit+a, (6*super.unit)+mov, super.unit+a);   
     if(lowerBound<super.maxboundBottom){
     if(c%10==0){
       moveDown();
     }
     c++;
     }
}

  
  void moveDown(){
    a+=super.unit;
    lowerBound++; 
  };
  void moveLeft(){
     if(leftBound>0){
     mov -=super.unit; 
     rightBound++; 
     leftBound--; 
     }
     
   };
   
   void moveRight(){
     if(rightBound>0){
     mov +=super.unit;
     leftBound++;
     rightBound--; 
     }
   }
};
